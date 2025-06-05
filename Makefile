CC = gcc
CFLAGS = -Wall -Werror -g
DATA = data_sets
BLOCK = block_size
MAIN = $(DATA) $(BLOCK)

all: $(MAIN) run

%: %.c
	@$(CC) $(CFLAGS) -o $@ $<

run:
	@sudo taskset -ac 0 nice -n -20 ./$(DATA)
	@sudo taskset -ac 0 nice -n -20 ./$(BLOCK)

clean:
	@rm -rf $(MAIN)

.PHONY: all run clean
