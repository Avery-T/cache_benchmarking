#include <stdatomic.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <x86intrin.h>
#include <string.h>
#include <unistd.h>

#define CACHE_SIZE      (256 * 1024) // 256 KB L2 cache (example)
#define CACHE_LINE_SIZE 64
#define CACHE_ASSOC     8
#define N_SETS          (CACHE_SIZE / (CACHE_LINE_SIZE * CACHE_ASSOC))
#define MAX_BLOCKS      16           // Test up to 16 blocks per set
#define REPEAT          100           // Repeat test for averaging

uint8_t *alloc_aligned_buffer(size_t size) {
    void *ptr = NULL;
    posix_memalign(&ptr, CACHE_LINE_SIZE, size);
    return (uint8_t*)ptr;
}

void clear_cache(uint8_t *buffer, size_t size) {
    volatile uint8_t sink = 0;
    for (size_t i = 0; i < size; i += CACHE_LINE_SIZE)
        sink += buffer[i];
}

void access_one_block_per_set(uint8_t *buffer) {
    for (size_t set = 0; set < N_SETS; ++set) {
        size_t idx = set * CACHE_LINE_SIZE;
        buffer[idx] += 1;
    }
}

void access_n_blocks_per_set(uint8_t *buffer, int n) {
    for (int blk = 0; blk < n; ++blk) {
        for (size_t set = 0; set < N_SETS; ++set) {
            size_t idx = set * CACHE_LINE_SIZE + blk * N_SETS * CACHE_LINE_SIZE;
            buffer[idx] += 1;
        }
    }
}

uint64_t measure_access_time(uint8_t *buffer) {
    atomic_thread_fence(memory_order_seq_cst); // Memory fence before timing
    uint64_t start = __rdtsc();
    access_one_block_per_set(buffer);
    atomic_thread_fence(memory_order_seq_cst); // Memory fence after access
    uint64_t end = __rdtsc();
    return end - start;
}
int main() {
    size_t bufsize = MAX_BLOCKS * N_SETS * CACHE_LINE_SIZE * 2;
    uint8_t *buffer = alloc_aligned_buffer(bufsize);
    memset(buffer, 0, bufsize);

    printf("N_BLOCKS\tAvg Access Time (cycles)\n");
    printf("--------\t------------------------\n");
    for (int n_blocks = 1; n_blocks <= MAX_BLOCKS; ++n_blocks) {
        uint64_t total_time = 0;
        for (int rep = 0; rep < REPEAT; ++rep) {
            clear_cache(buffer, bufsize);           // Step 1
            access_one_block_per_set(buffer);       // Step 2
            access_n_blocks_per_set(buffer, n_blocks); // Step 3
            total_time += measure_access_time(buffer); // Step 4
        }
        printf("%d\t\t%lu\n", n_blocks, total_time / REPEAT);
    }
    free(buffer);
    return 0;
}

