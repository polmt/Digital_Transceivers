import numpy as np

def sym_rand(N):
    if N % 2 != 0:
        raise ValueError("N should be an even number for equal probability of -1 and 1.")
    random_values = np.random.rand(N // 2)
    symbols = np.where(random_values < 0.5, -1, 1)
    random_array = np.tile(symbols, 2)
    return random_array

N = 10
random_array = sym_rand(N)
print(random_array)
