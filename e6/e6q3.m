SNR_dB = 3;
noise_var = 1 / (10^(SNR_dB/10));
N = sqrt(noise_var/2) * (randn(Nr, 1) + 1i * randn(Nr, 1));
R = H * Tx + N;
disp('R:');
disp(R);
