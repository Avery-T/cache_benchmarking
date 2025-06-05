#include <sys/mman.h>
#include <string.h>
#include <stdint.h>
#include <x86intrin.h> 
#include <stdlib.h>
#include <stdio.h>

int main() {
		unsigned int aux; 
		uint64_t start,end;
		for(uint8_t i=1; i < 10; i++) { 
    uint32_t code_size =  5 * 1024 * i; // 32KB
    // Allocate RWX memory
    uint8_t *code = mmap(NULL, code_size, PROT_READ | PROT_WRITE | PROT_EXEC,
                         MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    // Fill with 0x90 (NOP)
    memset(code, 0x90, code_size - 1);
    code[code_size - 1] = 0xC3; // RET

    // Call the code
	  	
    void (*func)() = (void (*)())code;
		//caches 
    func();

		start = _rdtscp(&aux); 
    func();
		end = _rdtscp(&aux); 
     printf("Code Cycle %d, CPU cycles: %llu\n", code_size,(unsigned long     long)(end - start));
    munmap(code, code_size);
		} 
    return 0;
}

