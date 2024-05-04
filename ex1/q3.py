import numpy as np

def generate_random_symbols(N):
    random_values = np.random.rand(N)
    symbols = np.where(random_values < 0.75, -1, 1)

    return symbols

N = 10
random_array = generate_random_symbols(N)
print(random_array)
