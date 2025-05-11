CC = gcc
CFLAGS = -Wall -Werror -g
MAIN = cache_block_size_benchmark
OBJS = $(MAIN).o

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

$(OBJS): $(MAIN).c
	$(CC) $(CFLAGS) -c $(MAIN).c

clean:
	rm *.o $(MAIN) core
