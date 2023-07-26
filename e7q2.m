N = input ('N =  ');
Ch_var = 1;
n_var = 0.1;
S_u = [-1, 1];
S_r = zeros(1, N);
u_s = zeros(1, N);
S_det = zeros(1, N);
for i = 1:N
    u_s(i) = randi([1, 2]);
    sym = S_u(u_s(i));
    Ch_G = sqrt(Ch_var/2) * (randn() + 1i * randn());
    n = sqrt(n_var/2) * (randn() + 1i * randn());
    S_r(i) = Ch_G * sym + n;
end
for i = 1:N
    ml = zeros(1, 2);
    for j = 1:2
        d = abs(S_r(i) - S_u(j));
        ml(j) = -d^2;
    end
    [~, I_max] = max(ml);
    S_det(i) = S_u(I_max);
end
SER = sum(S_det ~= S_u(u_s)) / N;
disp(['Symbol Error Rate: ', num2str(SER)]);
