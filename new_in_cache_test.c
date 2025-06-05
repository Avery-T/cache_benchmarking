#include <sys/mman.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <x86intrin.h>

#define TOTAL_REGION_SIZE (1024 * 1024) // 1 MB
#define SLOT_SIZE 128                   // 128 bytes per slot
#define MAX_SLOTS (TOTAL_REGION_SIZE / SLOT_SIZE)

void shuffle(size_t *arr, size_t n) {
    for (size_t i = n - 1; i > 0; --i) {
        size_t j = rand() % (i + 1);
        size_t tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
    }
}

int main() {
    srand(time(NULL));
    // Allocate 1 MB of RWX memory
    uint8_t *region = mmap(NULL, TOTAL_REGION_SIZE, PROT_READ | PROT_WRITE | PROT_EXEC,
                           MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (region == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    // Prepare an array of all possible slot offsets in the 1 MB region
    size_t slot_offsets[MAX_SLOTS];
    for (size_t i = 0; i < MAX_SLOTS; ++i) {
        slot_offsets[i] = i * SLOT_SIZE;
    }

    // For each region size, pick a random subset of slots and execute
    for (size_t region_kb = 1; region_kb <= 42; region_kb += 1) {
        size_t region_size = region_kb * 1024;
        size_t num_slots = region_size / SLOT_SIZE;

        // Shuffle the slot_offsets array to randomize slot locations
        shuffle(slot_offsets, MAX_SLOTS);

        // Prepare function pointers for the chosen slots
        void (**funcs)() = malloc(num_slots * sizeof(void (*)()));
        for (size_t i = 0; i < num_slots; ++i) {
            uint8_t *slot = region + slot_offsets[i];
            memset(slot, 0x90, SLOT_SIZE - 1); // NOPs
            slot[SLOT_SIZE - 1] = 0xC3;        // RET
            funcs[i] = (void (*)())slot;
        }

        // Shuffle function order for random execution
        for (size_t i = num_slots - 1; i > 0; --i) {
            size_t j = rand() % (i + 1);
            void (*tmp)() = funcs[i];
            funcs[i] = funcs[j];
            funcs[j] = tmp;
        }

        // Warm-up
        for (size_t i = 0; i < num_slots; ++i)
            funcs[i]();

        // Timed run
        unsigned int aux;
        uint64_t start = __rdtscp(&aux);
        for (size_t i = 0; i < num_slots; ++i)
            funcs[i]();
        uint64_t end = __rdtscp(&aux);

        printf("Region size: %4zu KB, cycles: %8llu\n", region_kb, (unsigned long long)(end - start));
        free(funcs);
    }

    munmap(region, TOTAL_REGION_SIZE);
    return 0;
}

