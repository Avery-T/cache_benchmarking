#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h>
#include <stdlib.h>

#define ARRAY_SIZE 4096


//__rdtscp is a x86 isntruction that serializes instruction execution.
//it waits for all previous instructions to complete before reading the timestamp counter
//it prevents subsequent instructions from starting until after the read.
// __rdtscp  acts as a memory barrier so you have accruate measurments

int main() {
    uint8_t *array = malloc(ARRAY_SIZE);
    unsigned int aux;
    uint64_t start, end;
		//trys to find the block size by increasingt the stride. I
		//If the delta between two strides it means you had a cache miss and thus the stride tells you your cache block size.
		//when you increase the stride passed the block size the delta is not going to be big because you're constantly cache missing
    for (int stride = 1; stride <= 512; stride *= 2) {
        start = __rdtscp(&aux);
        for (int i = 0; i < ARRAY_SIZE; i += stride) {
            array[i]++;
        }
        end = __rdtscp(&aux);
        printf("Stride: %d, CPU cycles: %llu\n", stride, (unsigned long long)(end - start));
    }
    free(array);
    return 0;
}

