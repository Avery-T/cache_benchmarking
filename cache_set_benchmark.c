#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>  
#include <x86intrin.h> 
#include <math.h> 
#include <stdint.h> 
//some of these defines i dont use anymore. too lazy to clean it up.
#define PAGE_SIZE 4096 
#define WAYS 8
#define WAY 0  
#define TRYS 3
//for virtual memroy 
#define BYTE_OFFSET_BITS 6 //((2^6 = 64) b/c block size 
#define SET_INDEX_BITS 6 //  
#define TAG_BITS BYTE_OFFSET_BITS + SET_INDEX_BITS
// + 6 b/c I want the address to be close to the MSB but not on the MSB so I have more addresses to work with
#define ADDRESS_BITS TAG_BITS + 4 
#define BLOCK_SIZE 64+1 
#define NON_BYTE_OFFSET_BITS 32 - 6

#define MAX_ADDR_NO_BYTE_OFFSET 1u << NON_BYTE_OFFSET_BITS - 1 //b/c base address is 0x10000
#define MAX_NUM_PAGES MAX_ADDR_NO_BYTE_OFFSET / PAGE_SIZE
#define CACHE_SIZE 32000

/* This program finds the number of ways by allocating memory and putting a counter value at the start of every line 
   It masks out the byte offset bits. 
	 Modern Caches dont care if the address is Virtual or Physical for the block Offset and Set Index. However they use physical for Tag.
	 This means that a userspace program (this one) can find how many sets you have in the cache and were in the address is the set index.
*/
int main() {
    // Choose two addresses with the same set index (bits 6-11)
    // For example: 0x100000 and 0x200000 (both have zeros in bits 6-11)
   	uint32_t start = 0; 
    uint32_t end = 0; 
		//a address thats close to assumed cache index bits but not too close 
    uintptr_t base_addr = 0x001000;
    uint32_t max_addr;
    size_t length = 0x001FFFF - 0x0010000 + 1; // = 0x10000 = 65536 bytes
    uintptr_t prev_addr = base_addr;
 		void * mmap_status =  mmap((void *) base_addr, length, PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
				
				 if (mmap_status == MAP_FAILED) {
        	fprintf(stderr, "mmap failed: %s\n", strerror(errno)); exit(1);
    		}
      uint8_t cnt =1; 
		

		//first iteration 
  ((volatile uint8_t *)base_addr)[0] = cnt; 
    uint32_t bit_mask = 0x00007FC0; 
    //probably could have done this loop better so it wouldnt loop through all the values that it doesnt need. 
		//but it works!  
    for(uint32_t i = 0; i < length; i++) 
		{
					
        uintptr_t addr = (base_addr | i ); 

		 	  //printf("Address (hex): 0x% - " PRIxPTR, addr);
        //to find if the index bits change. I dont care about the first 6. 
				if( (prev_addr & bit_mask) != (addr & bit_mask)){  
        


        uint8_t value_in_mem = ((volatile uint8_t *) addr)[0]; //will also read a cache line in 
				
				if(value_in_mem == 0) 
        {
          cnt++; 
       		((volatile uint8_t *)addr)[0] = cnt; 			
				} 
	
			 else 
			 {	
				 //the final address tells you the bits for the set index 
					//0x08 means pad to 8 digits b/c 32 bit number
         printf("--------------final L1 DCache Sets - %d -------------",cnt); 

 				 return 0;
		  	}	
      }
		prev_addr = addr; 
		}
    return 0;
}

