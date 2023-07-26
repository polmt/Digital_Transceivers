M = 4;
x = (0:M-1)';
y = qammod(x,M);
bitsPerSym = log2(M);
SNR_dB = 0:2:20;
N = 1000;
SER = zeros(1, length(SNR_dB));
for i = 1:length(SNR_dB)
    SNR = 10^(SNR_dB(i)/10);
    n_var = 1 / SNR;
    n = sqrt(n_var/2) * (randn(1, N) + 1j*randn(1, N));
    N_err = 0;
    for j = 1:N
        channel = (randn(1, 1) + 1j*randn(1, 1)) / sqrt(2);
        tx_symbols = randi([0 M-1], 1, 1000);
        mod_symbols = y(tx_symbols+1);
        rx_symbols = channel * mod_symbols + n(j);
        z = qamdemod(rx_symbols, y);
        N_err = N_err + sum(tx_symbols ~= z.');
    end
    SER(i) = N_err / (num_trials * 1000 * bitsPerSym);
end
semilogy(SNR_dB, SER);
xlabel('SNR_{dB}');
ylabel('SER');
title('SER - SNR (4-QAM Rayleigh Fading Channel)');