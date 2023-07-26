Nt = 4;
Nr = 3;
real_part = randn(Nr, Nt) / sqrt(2);
imag_part = randn(Nr, Nt) / sqrt(2);
H = complex(real_part, imag_part);
disp('H:');
disp(H);
