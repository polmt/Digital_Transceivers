import numpy as np

qam_symbols = np.array([1 + 1j, 1 - 1j, -1 - 1j, -1 + 1j])

vector = np.random.choice(qam_symbols, size=(2, 1))

print("2x1 Vector with 4-QAM Symbols:")
print(vector)
