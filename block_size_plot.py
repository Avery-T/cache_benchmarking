import matplotlib.pyplot as plt

# Data
strides = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
cycles = [42, 56, 59, 45, 53, 51, 51, 86, 75, 78]

# PowerPoint-optimized figure size
plt.figure(figsize=(16, 9))  # 16:9 widescreen

# Main line plot
plt.plot(strides, cycles, marker='o', linestyle='-', color='blue', linewidth=3, markersize=10)

# Formatting
plt.xscale('log', base=2)
plt.xlabel('Stride (bytes)', fontsize=24, labelpad=15)
plt.ylabel('CPU Cycles', fontsize=24, labelpad=15)
plt.title('CPU Cycles vs. Stride Length', fontsize=30, pad=20)
plt.xticks(fontsize=20)
plt.yticks(fontsize=20)
plt.grid(True, which="both", ls="--", linewidth=1)

# Annotation for 64-byte stride
idx_64 = strides.index(64)
plt.annotate(
    '64 bytes',
    (strides[idx_64], cycles[idx_64]),
    textcoords="offset points",
    xytext=(0, -80),  # Farther below the dot
    ha='center',
    fontsize=24,
    color='red',
    fontweight='bold',
    arrowprops=dict(arrowstyle="->", color='red', lw=2, shrinkA=0, shrinkB=0)
)

plt.tight_layout()
plt.show()

