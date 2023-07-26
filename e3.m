% Background study | dot 3
N = input ('N = '); 
% P = mean(abs(N).^2);
% n = P / (2 * 10^(3/10));
% y = sqrt(n) * randn(1, N) * (1 + 1i)

% Question 1
TR = sign(randn (1, N));

% Question 2
x = input ('x = '); 
P_signal = mean (abs(N).^2);
P_noise = P_signal / (10^(x/10));
n = sqrt(P_noise) * randn(1, N);
N = TR + n
