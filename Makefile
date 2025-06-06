CC = gcc
CFLAGS = -Wall -Wunused-variable -g
SRC = src
OUT_DIR = out
RESULT_DIR = results
DATA = data_sets
BLOCK = block_size
LATENCY = latency
INST = instruction_cache

all: $(OUT_DIR) \
	$(OUT_DIR)/$(DATA) \
	$(OUT_DIR)/$(BLOCK) \
	$(OUT_DIR)/$(LATENCY) \
	$(OUT_DIR)/$(INST)

$(OUT_DIR):
	@mkdir -p $@

$(OUT_DIR)/$(DATA): $(SRC)/$(DATA).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

$(OUT_DIR)/$(BLOCK): $(SRC)/$(BLOCK).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

$(OUT_DIR)/$(LATENCY): $(SRC)/$(LATENCY).c
	@$(CC) $(CFLAGS) -o $@ $<

$(OUT_DIR)/$(INST): $(SRC)/$(INST).c
	@$(CC) $(CFLAGS) -Werror -o $@ $<

run:
	@mkdir -p $(RESULT_DIR)
	@sudo taskset -ac 0 nice -n -20 ./$(OUT_DIR)/$(DATA) >> $(RESULT_DIR)/$(DATA).txt
	@sudo taskset -ac 0 nice -n -20 ./$(OUT_DIR)/$(BLOCK) >> $(RESULT_DIR)/$(BLOCK).csv
	@sudo bash $(SRC)/$(LATENCY).sh >> $(RESULT_DIR)/$(LATENCY).csv
	@sudo taskset -ac 0 nice -n -20 ./$(OUT_DIR)/$(INST) >> $(RESULT_DIR)/$(INST).csv

plot:
	@python3 src/li_cache_plot.py

clean:
	@rm -rf $(RESULT_DIR) $(OUT_DIR)

.PHONY: all run plot clean
