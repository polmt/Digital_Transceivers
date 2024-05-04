import numpy as np

qam_symbols = np.array([1 + 1j, 1 - 1j, -1 - 1j, -1 + 1j])

vector = np.random.choice(qam_symbols, size=(2, 1))

covariance_matrix = np.outer(vector, np.conj(vector))

total_power = np.sum(np.abs(vector) ** 2)

print("Covariance Matrix:")
print(covariance_matrix)

print("\nTotal Power of the Vector:", total_power)
