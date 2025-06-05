CC = gcc
CFLAGS = -Wall  -Werror -Wunused-variable -g
DATA = data_sets
BLOCK = block_size
LATENCY = latency
MAIN = $(DATA) $(BLOCK) $(LATENCY)

all: $(MAIN) run

%: %.c
	@$(CC) $(CFLAGS) -o $@ $<

$(LATENCY): $(LATENCY).c
	@$(CC) $(CFLAGS) -o $@ $<

run:
	@sudo taskset -ac 0 nice -n -20 ./$(DATA)
	@sudo taskset -ac 0 nice -n -20 ./$(BLOCK)
	@sudo bash $(LATENCY).sh

clean:
	@rm -rf $(MAIN)

.PHONY: all run clean
