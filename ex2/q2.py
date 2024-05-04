import numpy as np

N = 1000

variance1 = 2
variance2 = 4

real_part1 = np.random.randn(N) * np.sqrt(variance1)
imaginary_part1 = np.random.randn(N) * np.sqrt(variance1)
complex_process1 = real_part1 + 1j * imaginary_part1

calculated_variance1 = np.var(complex_process1)

real_part2 = np.random.randn(N) * np.sqrt(variance2)
imaginary_part2 = np.random.randn(N) * np.sqrt(variance2)
complex_process2 = real_part2 + 1j * imaginary_part2

calculated_variance2 = np.var(complex_process2)

print(f'Variance of the process with variance 2: {calculated_variance1:.4f}')
print(f'Variance of the process with variance 4: {calculated_variance2:.4f}')
