m = 3;
G = randn(m, m) + 1i * randn(m, m);
R_m = sqrt(1/2) * G;
disp('Rayleigh MIMO Matrix:');
disp(R_m);
