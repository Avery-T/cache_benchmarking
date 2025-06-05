CC = gcc
CFLAGS = -Wall -Wunused-variable -g
DATA = data_sets
BLOCK = block_size
LATENCY = latency
INST = instruction_cache
MAIN = $(DATA) $(BLOCK) $(LATENCY) $(INST)

all: $(MAIN)

$(DATA): $(DATA).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

$(BLOCK): $(BLOCK).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

$(LATENCY): $(LATENCY).c
	@$(CC) $(CFLAGS) -o $@ $<

$(INST): $(INST).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

run:
	@echo "--------------Number of L1 Data Cache Sets--------------"
	@sudo taskset -ac 0 nice -n -20 ./$(DATA)
	@echo ""
	@echo "--------------Data Cache Block Size Tests--------------"
	@sudo taskset -ac 0 nice -n -20 ./$(BLOCK)
	@echo ""
	@echo "--------------Cache Latency Tests--------------"
	@sudo bash $(LATENCY).sh
	@echo ""
	@echo "--------------L1 Instruction Cache Tests--------------"
	@sudo taskset -ac 0 nice -n -20 ./$(INST)

clean:
	@rm -rf $(MAIN)

.PHONY: all run clean
