% Question 1
N = input ('N = ');
x_u = rand (1, N);
x_n = randn (1, N);
x_u_mean = (sum(x_u)/N) % alternatively "mean(x_u)"
x_n_mean = (sum(x_n)/N) % alternatively "mean(x_n)"
x_u_var = (sum((x_u).^2)/N)-((sum(x_u)/N).^2)
          % alternatively "var(x_u)"
x_n_var = (sum((x_n).^2)/N)-((sum(x_n)/N).^2)
          % alternatively "var(x_n)"

% Question 2
M = 1000;
z2 = sqrt(2)*(randn(1, M)+1i*randn(1, M));
z4 = sqrt(4)*(randn(1, M)+1i*randn(1, M));
z2_r_var = var(real(z2))
z2_i_var = var(imag(z2))
z4_r_var = var(real(z4))
z4_i_var = var(imag(z4))