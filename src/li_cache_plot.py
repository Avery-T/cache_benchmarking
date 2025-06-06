import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

df = pd.read_csv(
    "results/instruction_cache.csv",
    skipinitialspace=True,
    usecols=["Region Size (KB)", "Avg Cycles"]
)

region_kb = df["Region Size (KB)"]
avg_cycles = df["Avg Cycles"]

plt.figure(figsize=(8,5))
plt.plot(region_kb, avg_cycles, marker='o')
plt.xlabel('Region Size (KB)')
plt.ylabel('Avg Cycles per Call')
plt.title('Instruction Cache Benchmark')

# Set x-axis ticks at every 16 KB
plt.xticks(np.arange(0, 129, 16))  # 0, 16, 32, ..., 128

plt.grid(True)
plt.tight_layout()
plt.show()

