N = input ('N =  ');

% Example 1
x1 = randn (1, N);
x1 (x1 < 0) = -1;
x1 (x1 >= 0) = 1;

% Example 2
x2 = rand (1, N);
x2 (x2 < 0.5) = -1;
x2 (x2 >= 0.5) = 1;

% Example 3
x3 = rand75 (N);

% Example 4
[fn, fp] = rel_freq (x1, x2, x3, N)
