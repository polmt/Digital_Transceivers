function [f_r_n, f_r_p] = rel_freq (x1, x2, x3, N)
f_r_n = (sum(x1 == -1) + sum(x2 == -1) + sum(x3 == -1)) / (3 * N);
f_r_p = (sum(x1 == 1) + sum(x2 == 1) + sum(x3 == 1)) / (3 * N);
end