M = 4;
x = (0:M-1)';
y = qammod(x,M);
bitsPerSym = log2(M);
SNR_dB = 0:2:20;
N = 1000;
SER = zeros(1, length(SNR_dB));
for i = 1:length(SNR_dB)
    SNR = 10^(SNR_dB(i)/10);
    noise_var = 1 / SNR;
    noise = sqrt(noise_var/2) * (randn(2, N) + 1i*randn(2, N));
    N_err = 0;
    for j = 1
        G = (randn(2, 1) + 1i*randn(2, 1)) / sqrt(2);
        txSym = randi([0 M-1], 1, 1000);
        modSym = qammod(txSym+1);
        rxSym = G * modSym + noise(:, 1i);
        H = G;
        R = H * H';
        demodSym = qamdemod(R * rxSym, constellation);
        N_err = N_err + sum(txSym ~= demodSym.');
    end
    SER(i) = N_err / (N * 1000 * bitsPerSym);
end
semilogy(SNR_dB, SER);
xlabel('SNR_{dB}');
ylabel('SER');
title('SER - SNR (4-QAM 1x2 MIMO Rayleigh Fading Channel)');
