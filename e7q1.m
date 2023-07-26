N = input ('N =  ');
Ch_var = 1;
n_var = 0.1;
S_u = [-1, 1];
S_r = zeros(1, N);
u_s = zeros(1, N);
for i = 1:N
    u_s(i) = randi([1, 2]);
    sym = S_u(u_s(i));
    Ch_G = sqrt(Ch_var/2) * (randn() + 1i * randn());
    n = sqrt(n_var/2) * (randn() + 1i * randn());
    S_r(i) = Ch_G * sym + n;
end
P_R_avg = mean(abs(S_r).^2);
disp(['Average received power: ', num2str(P_R_avg)]);