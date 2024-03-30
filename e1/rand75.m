function [x3] = rand75 (N)
x3 = rand(1,N);
x3 (x3 < 0.75) = -1;
x3 (x3 >= 0.25) = 1;
end
