rng(42);
Tx = zeros(4, 1);
for i = 1:4
    real_part = 2 * round(rand) - 1;
    imag_part = 2 * round(rand) - 1;
    symbol = complex(real_part, imag_part);
    Tx(i) = symbol;
end
disp('Tx:');
disp(Tx);
