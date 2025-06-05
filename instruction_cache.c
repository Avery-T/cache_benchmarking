#include <sys/mman.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <x86intrin.h>

#define TOTAL_REGION_SIZE (128 * 1024 * 1) // 128 KB
#define SLOT_SIZE 1 
#define PAGE_SIZE 4096
#define MAX_ITLB_PAGES 128
#define NUM_RUNS 1000
#define CPU_FREQ_GHZ 0.8 // Set to your CPU's frequency in GHz

void shuffle(size_t *arr, size_t n) {
    for (size_t i = n - 1; i > 0; --i) {
        size_t j = rand() % (i + 1);
        size_t tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
    }
}

void fill_with_lfence_and_ret(uint8_t *slot, size_t slot_size) {
    // Fill as many lfence instructions (0F AE E8, 3 bytes each) as possible
    size_t n_lfence = (slot_size - 1) / 3;
    size_t offset = 0;
    for (size_t i = 0; i < n_lfence; ++i) {
        slot[offset++] = 0x0F;
        slot[offset++] = 0xAE;
        slot[offset++] = 0xE8;
    }
    // Fill any remaining bytes (except last) with NOPs
    while (offset < slot_size - 1) {
        slot[offset++] = 0x90;
    }
    // Last byte is RET
    slot[slot_size - 1] = 0xC3;
}

int main() {
    srand(time(NULL));
    uint8_t *region = mmap(NULL, TOTAL_REGION_SIZE, PROT_READ | PROT_WRITE | PROT_EXEC,
                           MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (region == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    printf("Region Size (KB), Pages, Avg cycles, Avg ns\n");

    for (size_t region_kb = 0; region_kb <= 128; region_kb += 4){ 
        size_t region_size = region_kb * 1024;
        if (region_size == 0)
            region_size = 1024;
        size_t num_slots = region_size / SLOT_SIZE;
        size_t unique_pages = (region_size + PAGE_SIZE - 1) / PAGE_SIZE;

        if (unique_pages > MAX_ITLB_PAGES) {
            printf("Region size: %4zu KB would use %zu pages (exceeds iTLB coverage of %d pages), skipping.\n",
                   region_kb, unique_pages, MAX_ITLB_PAGES);
            continue;
        }

        // Prepare contiguous slots
        void (**funcs)() = malloc(num_slots * sizeof(void (*)()));
        size_t *call_order = malloc(num_slots * sizeof(size_t));

        // Initialize slots and call order
        size_t filled = 0;
        for (size_t i = 0; filled < num_slots; ++i) {
            uint8_t *slot = region + i * SLOT_SIZE;
            size_t page_offset = (size_t)slot % PAGE_SIZE;
            if (page_offset + SLOT_SIZE > PAGE_SIZE)
                continue; // Skip if slot would cross page boundary
            fill_with_lfence_and_ret(slot, SLOT_SIZE);
            funcs[filled] = (void (*)())slot;
            call_order[filled] = filled;
            filled++;
        }

        // Warm-up
        shuffle(call_order, num_slots);
        for (size_t i = 0; i < num_slots; ++i)
            funcs[call_order[i]]();

        // Timed run
        unsigned int aux;
        uint64_t total_cycles = 0;

        for (int run = 0; run < NUM_RUNS; ++run) {
            shuffle(call_order, num_slots);
            uint64_t start = __rdtscp(&aux);
            for (size_t i = 0; i < num_slots; ++i) {
                funcs[call_order[i]]();
            }
            uint64_t end = __rdtscp(&aux);
            total_cycles += (end - start);
        }

        double avg_cycles = (double)total_cycles / (NUM_RUNS);
        double avg_ns = avg_cycles / CPU_FREQ_GHZ;

        printf("%10zu, %5zu, %12.2f, %10.2f\n", region_kb, unique_pages, avg_cycles / num_slots, avg_ns / num_slots);

        free(funcs);
        free(call_order);
    }

    munmap(region, TOTAL_REGION_SIZE);
    return 0;
}
