#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h> // For __rdtscp
#define ARR_SIZE 64
int main(){ 
    unsigned int aux;
    uint64_t start, end;
    uint8_t ** arr =  malloc(64 * sizeof(uint8_t *));

		for(uint8_t i=0; i<64; i++){ 
			arr[i] = malloc(ARR_SIZE * sizeof(uint8_t)); 
    }  

    // Serialize and read start timestamp
	  for(uint8_t i = 0; i < ARR_SIZE; i++) {
				for(uint8_t k = 0; k <ARR_SIZE; k++){ 
    			start = __rdtscp(&aux);
					arr[i] = arr[i] + 1; 
   				// Code to measure goes here
    			asm volatile("" ::: "memory"); // Prevent optimization
    				// Serialize and read end timestamp
    			end = __rdtscp(&aux);
    			printf("CPU cycles: %llu\n", (unsigned long long)(end - start));
				}
      arr = arr + 1; 
   } 
    return 0;
}

