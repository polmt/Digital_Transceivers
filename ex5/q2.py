import numpy as np
import matplotlib.pyplot as plt

qam_symbols = np.array([-1 - 1j, -1 + 1j, 1 - 1j, 1 + 1j])

num_symbols = 10000
snr_db = np.linspace(0, 20, 21)
snr_lin = 10 ** (snr_db / 10)

ser_mimo = np.zeros(len(snr_db))

for i in range(len(snr_db)):
    errors = 0
    for _ in range(num_symbols):
        transmitted_symbols = np.random.choice(qam_symbols, size=2)

        noise = np.random.normal(0, np.sqrt(1 / (2 * snr_lin[i])), size=(2, 2))
        received_symbols = np.dot(np.sqrt(0.5), np.random.randn(2, 2)) + np.outer(transmitted_symbols, [1, 1]) + noise

        mrc_weights = np.linalg.pinv(np.dot(received_symbols, received_symbols.conj().T))
        decoded_symbols = np.dot(mrc_weights, received_symbols)

        distances = np.abs(qam_symbols[:, np.newaxis] - decoded_symbols)
        symbol_distances = np.sum(np.abs(distances) ** 2, axis=1)

        decoded_indices = np.argmin(symbol_distances)

        if not np.allclose(transmitted_symbols, qam_symbols[decoded_indices]):
            errors += 1

    ser_mimo[i] = errors / num_symbols

plt.semilogy(snr_db, ser_mimo, marker='o', label='1x2 MIMO (MRC)')
plt.title('SER vs. SNR for 1x2 MIMO 4-QAM over Rayleigh Channel')
plt.xlabel('SNR (dB)')
plt.ylabel('Symbol Error Rate (SER)')
plt.grid(True)

plt.legend()
plt.show()
