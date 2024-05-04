import numpy as np

N = 10000
Ch_var = 1.0
n_var = 0.1

u1_Tx = np.random.choice([-1, 1], N)
u2_Tx = np.random.choice([-1, 1], N)
Ch = np.sqrt(Ch_var) * (np.random.randn(N) + 1j * np.random.randn(N))
n = np.sqrt(n_var) * (np.random.randn(N) + 1j * np.random.randn(N))

Rx_sigs = []
for i in range(N):
    u_Tx = np.random.choice([1, 2])
    if u_Tx == 1:
        Rx_sig = u1_Tx[i] * Ch[i] + n[i]
    else:
        Rx_sig = u2_Tx[i] * Ch[i] + n[i]

    Rx_sigs.append(Rx_sig)

u_det = []
sym_det = []

for i in range(N):
    u1_like = np.abs(np.sum(np.conj(u1_Tx[i]) * Rx_sigs[i]))
    u2_like = np.abs(np.sum(np.conj(u2_Tx[i]) * Rx_sigs[i]))

    if u1_like > u2_like:
        u_det.append(1)
        sym_det.append(u1_Tx[i])
    else:
        u_det.append(2)
        sym_det.append(u2_Tx[i])

bits_err = np.sum(np.abs(u1_Tx - sym_det))
BER = bits_err / (N * 1.0)

print("Bit Error Rate =", BER)
