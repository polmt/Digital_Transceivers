N = input ("Insert the number of samples: ");
SNR = -3 : 20;
Z = zeros (1, N);
for i = 1 : length (SNR)
X = (2 * (rand (1,N) > 0.5) -1) + 1i * (2 * (rand (1,N) > 0.5) -1);
S = (1 / sqrt(2)) * X;
n = 1 / sqrt(2) * (randn (1,N) + 1i * randn (1,N));
Y = S + 10 ^ (-SNR(i) / 20) * n;
Y_real = real(Y);
Y_imag = imag(Y);
Z(Y_real < 0 & Y_imag < 0) = -1 + -1i;
Z(Y_real >= 0 & Y_imag > 0) = 1 + 1i;
Z(Y_real < 0 & Y_imag >= 0) = -1 + 1i;
Z(Y_real >= 0 & Y_imag < 0) = 1 - 1i;
N_err(i) = size (find (X - Z), 2);
end
SER_sim = N_err / N;
SER_theor = erfc (sqrt (0.5 * (10.^(SNR/10)))) - (1/4) * (erfc (sqrt(0.5 * (10.^(SNR/10))))).^2;
close all
figure
semilogy(SNR, SER_theor,'b.-');
hold on
semilogy(SNR, SER_sim,'mx-');
axis([-3 15 10^-5 1])
grid on
legend('Theoretical', 'Simulation');
xlabel('SNR_{dB}')
ylabel('SER')
title('Probability of Symbol Error 4-QAM')
