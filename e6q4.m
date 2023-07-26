R = [1+1i; -1+1i; -1-1i; 1-1i];
H = [0.4+0.3i -0.1+0.2i 0.6-0.4i 0.2+0.1i;
     0.5-0.1i 0.2+0.7i -0.3-0.6i 0.4-0.3i;
     -0.2-0.1i 0.8+0.4i 0.1-0.2i -0.5+0.6i];
Tx = [1+1i; -1-1i; -1+1i; -1-1i];
Tx_hat = pinv(H) * R;
num_errors = sum(Tx_hat ~= Tx);
disp(['Number of symbol errors: ' num2str(num_errors)]);
