QAM_sym = [1+1i, 1-1i, -1-1i, -1+1i];
ind_1 = randi([1 4], 2, 1);
ind_2 = randi([1 4], 2, 1);
v_1 = QAM_sym(ind_1);
v_2 = QAM_sym(ind_2);
disp('Vector 1 =');
disp(v_1);
disp('Vector 2 =');
disp(v_2);
