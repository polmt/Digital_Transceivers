% 1)
N = 100;
TR = sign (randn (1, N));
AWGN = sqrt(1 / (2 * (10 ^ (5/10) ) ) );
RC = TR + AWGN;
if RC < 0
    then RC = -1
elseif RC >= 0
    then RC = 1
end
SER = (N - sum(RC ~= TR) ) /N;
fprintf ('SER = %.4f', SER);

% 2)
for i = 1 : 25
    N = 100;
    TR = sign (randn (1, N));
    AWGN = sqrt(1 / (2 * (10 ^ (5/10) ) ) );
    RC = TR + AWGN;
    if RC < 0
        then RC = -1
    elseif RC >= 0
        then RC = 1
    end
    SER = sum(RC ~= TR)/N;
    fprintf ('SER = %.4f', SER);
end

% 3)
for i = 1 : 25
    N = 1000;
    TR = sign (randn (1, N));
    AWGN = sqrt(1 / (2 * (10 ^ (5/10) ) ) );
    RC = TR + AWGN;
    if RC < 0
        then RC = -1
    elseif RC >= 0
        then RC = 1
    end
    SER = (N - sum(RC ~= TR) ) /N;
    fprintf ('SER = %.4f', SER);
end

% 4)
for i = 1 : 25
    N = 1000;
    TR = sign (randn (1, N));
    AWGN = sqrt(1 / (2 * (10 ^ (5/10) ) ) );
    RC = TR + AWGN;
    if RC < 0.5
        then RC = -1
    elseif RC >= 0.5
        then RC = 1
    end
SER = sum(RC ~= TR)/N;
    fprintf ('SER = %.4f', SER);
end