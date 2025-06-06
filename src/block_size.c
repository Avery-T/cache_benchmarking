#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h>
#include <stdlib.h>

#define ARRAY_SIZE 1024

//__rdtscp is a x86 isntruction that serializes instruction execution.
//it waits for all previous instructions to complete before reading the timestamp counter
//it prevents subsequent instructions from starting until after the read.
// __rdtscp  acts as a memory barrier so you have accruate measurments

int main() {
    volatile uint8_t *array = calloc(ARRAY_SIZE,sizeof(uint8_t));
    unsigned int aux;
    uint64_t start, end;
    //trys to find the block size by increasingt the stride. I
    //If the delta between two strides it means you had a cache miss and thus the stride tells you your cache block size.
    //when you increase the stride passed the block size the delta is not going to be big because you're constantly cache missing
		//load the first element into cache
	  array[0]; 	
	  __asm__ volatile("lfence" ::: "memory"); // stoping the prefetcher with this
	
    for (int stride = 1; stride <= 512; stride *= 2) {
       start = __rdtscp(&aux);
       array[stride];
		  __asm__ volatile("lfence" ::: "memory");

        end = __rdtscp(&aux);
        printf("Stride: %d, CPU cycles: %llu\n", stride, (unsigned long long)(end - start));
    }
    free((void*) array); //casting away volatile
    return 0;
}
