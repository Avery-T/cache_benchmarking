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

