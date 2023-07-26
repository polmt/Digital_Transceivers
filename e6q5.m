snr_range = -10:2:10;
num_repetitions = 100;
ser = zeros(size(snr_range));
for i = 1:length(snr_range)
    snr_linear = 10^(snr_range(i)/10);
    error_count = 0;
    for j = 1:num_repetitions
        noise_var = 1 / snr_linear;
        N = sqrt(noise_var/2) * (randn(size(R)) + 1i * randn(size(R)));
        Tx_hat = pinv(H) * R + N;
        error_count = error_count + sum(Tx_hat ~= Tx);
    end
    ser(i) = error_count / (num_repetitions * length(Tx));
end
figure;
semilogy(snr_range, ser, 'bo-');
xlabel('SNR (dB)');
ylabel('Symbol Error Rate (SER)');
title('Average SER vs. SNR');
grid on;
