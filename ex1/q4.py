import numpy as np

def generate_random_symbols(N):
    random_values = np.random.rand(N)
    symbols = np.where(random_values < 0.75, -1, 1)

    return symbols
def calculate_relative_frequency(random_array):
    unique, counts = np.unique(random_array, return_counts=True)
    total_count = len(random_array)
    relative_frequencies = counts / total_count
    return dict(zip(unique, relative_frequencies))

N_values = [10, 100, 1000]
for N in N_values:
    random_array = generate_random_symbols(N)
    relative_frequency = calculate_relative_frequency(random_array)
    print(f"Relative frequency for N={N}: {relative_frequency}")
