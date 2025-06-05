CC = gcc
CFLAGS = -Wall -Werror -g
MAIN = cache_block_size_benchmark
OBJS = $(MAIN).o

all: $(MAIN) run

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

$(OBJS): $(MAIN).c
	$(CC) $(CFLAGS) -c $(MAIN).c

run:
	sudo taskset -ac 0 nice -n -20 ./$(MAIN)

clean:
	rm *.o $(MAIN)
