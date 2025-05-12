<<<<<<< HEAD
# cache_benchmarking
This repository includes cache_info.c from the Linux kernel source tree.
The file is copyright (C) the original Linux kernel authors and is licensed under the GPL-2.0.
See the top of the file for the full license notice.

and code from 

# cache block size 
to run  taskset -ac 0 "the name" 
taskset pins your program to a single core to increase the likley hood that this program will use all of that cores cache

you hit your block size when increasing the stride does not decrease the #cycles it took due to always having a cache miss.
however continued slight drops in cycles occur because you are still accessing fewer elements each stride increase

=======
# Cache Benchmarking Between x86 Processors

- CPE 515-01, Spring 2025
- Avery Taylor, Stanley To

## Program Description

The purpose of this program is to detect the cache usage and structure on various x86 processors.
The structure of every x86 processor advances every generation and as the result, the layout of the caches vary.
This program aims to use memory allocation and determine the size of the caches and calculate memory access times (L1, L2, RAM, and SSD).
>>>>>>> 60d5d6b7d1f07dc738d12a46f0838e9246bc8d84
