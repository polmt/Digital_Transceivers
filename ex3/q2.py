import numpy as np

def generate_awgn(N, SNR_dB):
    signal_power = np.var(TR)
    noise_power = signal_power / (10 ** (SNR_dB / 10))
    noise = np.random.normal(0, np.sqrt(noise_power), N)
    return noise

N = int(input("Enter the number of samples (N): "))
SNR_dB = float(input("Enter the SNR in dB: "))

def generate_random_symbols(N):
    TR = np.random.choice([-1, 1], size=N)
    return TR

TR = generate_random_symbols(N)

N = generate_awgn(N, SNR_dB)

print("Generated AWGN vector N:", N)
