#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h>

#define ARRAY_SIZE 1024
volatile uint8_t array[ARRAY_SIZE];

uint64_t measure_access(volatile uint8_t *addr) {
    uint64_t start, end;
    unsigned int aux;
    _mm_lfence();
    start = __rdtscp(&aux);
    (void)*addr;
    _mm_lfence();
    end = __rdtscp(&aux);
    return end - start;
}

void flush_cache_line(volatile void *addr) {
    _mm_clflush(addr);
}

int main() {
    volatile uint8_t *target = &array[0];

    // Warm up cache
    *target = 1;

    // Measure L1 hit latency many times and take the minimum
    uint64_t min_cached = (uint64_t)-1;
    for (int i = 0; i < 1000; i++) {
        uint64_t t = measure_access(target);
        if (t < min_cached) min_cached = t;
    }

    // Flush and measure uncached access many times, take the minimum
    uint64_t min_uncached = (uint64_t)-1;
    for (int i = 0; i < 1000; i++) {
        flush_cache_line(target);
        uint64_t t = measure_access(target);
        if (t < min_uncached) min_uncached = t;
    }

    printf("L1 Hit: %4lu cycles\n", min_cached);
    printf("DRAM Access: %4lu cycles\n", min_uncached);

    return 0;
}

