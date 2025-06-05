import matplotlib.pyplot as plt
import numpy as np

region_kb = [
    0, 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96
]
avg_cycles = [
    43.28, 43.81, 44.50, 45.47, 46.45, 46.71, 47.22, 48.03, 52.91, 52.98, 52.21, 53.05, 54.33,
    56.75, 55.79, 58.80, 56.79, 57.49, 57.40, 59.01, 59.50, 58.69, 59.73, 62.15, 60.60
]

plt.figure(figsize=(8,5))
plt.plot(region_kb, avg_cycles, marker='o')
plt.xlabel('Region size (KB)')
plt.ylabel('Avg cycles per call')
plt.title('Instruction Cache Benchmark')

# Set x-axis ticks at every 16 KB
plt.xticks(np.arange(0, 97, 16))  # 0, 16, 32, ..., 96

plt.grid(True)
plt.tight_layout()
plt.show()

