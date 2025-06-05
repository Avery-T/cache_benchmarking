CC = gcc
CFLAGS = -Wall -Werror -Wunused -g 
DATA = data_sets
BLOCK = block_size

all: $(DATA) $(BLOCK) run

%: %.c
	@$(CC) $(CFLAGS) -o $@ $<

run:
	@sudo taskset -ac 0 nice -n -20 ./$(DATA)
	@sudo taskset -ac 0 nice -n -20 ./$(BLOCK)

clean:
	@rm -rf $(DATA) $(BLOCK)

.PHONY: all run clean
