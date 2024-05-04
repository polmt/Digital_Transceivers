import numpy as np

def generate_random_symbols(N):
    TR = np.random.choice([-1, 1], size=N)
    return TR

N = int(input("Enter the number of samples (N): "))
TR = generate_random_symbols(N)
print("Generated array TR:", TR)
