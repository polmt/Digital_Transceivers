m = 3;
G = randn(m, m) + 1i * randn(m, m);
R_m = sqrt(1/2) * G;
C_x_ex = R_m * R_m';
disp('Experimental C_x_ex = ');
disp(C_x_ex);
C_x_th = eye(3);
disp('Theoretical C_x_th = ');
disp(C_x_th);
if isequal(C_x_ex, C_x_th)
    disp('Theoretical and experimental covariance matrices match.');
else
    disp('Theoretical and experimental covariance matrices do not match.');
end
