#include <sys/mman.h>
#include <string.h>
#include <stdint.h>
#include <x86intrin.h>
#include <stdlib.h>
#include <stdio.h>

#define REPEAT 1000

static inline void cpuid() {
    asm volatile("cpuid" ::: "rax", "rbx", "rcx", "rdx");
}

int main() {
    unsigned int aux;
    uint64_t start, end, min_cycles;
    for (uint8_t i = 1; i < 70; i++) {
        uint32_t code_size = 1024 * i ; // 1KB steps
        uint8_t *code = mmap(NULL, code_size, PROT_READ | PROT_WRITE | PROT_EXEC,
                             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (code == MAP_FAILED) {
            perror("mmap");
            continue;
        }
        // Fill with NOPs and RET at the end
        memset(code, 0x90, code_size - 1);
        code[code_size - 1] = 0xC3;

        void (*func)() = (void (*)())code;

        // Warm up
        func();

        min_cycles = (uint64_t)-1;
        for (int r = 0; r < 10; r++) {
            cpuid();
            start = __rdtscp(&aux);
            for (int j = 0; j < REPEAT; j++)
                func();
            end = __rdtscp(&aux);
            cpuid();
            uint64_t cycles = (end - start) / REPEAT;
            if (cycles < min_cycles) min_cycles = cycles;
        }
        printf("Code size: %d, Min CPU cycles: %llu\n", code_size, (unsigned long long)min_cycles);
        munmap(code, code_size);
    }
    return 0;
}

