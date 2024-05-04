import numpy as np

rows, cols = 3, 3

real_part = np.random.randn(rows, cols) / np.sqrt(2)
imag_part = np.random.randn(rows, cols) / np.sqrt(2)

rayleigh_matrix = real_part + 1j * imag_part

print("Complex Rayleigh MIMO Matrix:")
print(rayleigh_matrix)
