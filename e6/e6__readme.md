### e6)

#### q1)

Using randn write a Mallab script that produces a 4x1 vector consisting of random, independent and identically distributed 4-QAM symbols (e.g., +1+j, +1-j, -1+j and -1-j), and name it Tx.


#### q2)

Produce in Matlab a Rayleigh MIMO matrix realization H where its elements have a variance of one.


#### q3)

Produce in Matlab the vector R=H*Tx+N, where N is an additive white Gaussian noise vector with dimensions 4x1 and the variance of each element is such that the SNR is 3 dB.


#### q4)

Perform zero-forcing (hard) detection and calculate how many symbols errors have been made.


#### q5)

Write a Matlab script that performs the same process for several repetitions and SNRs, and plots the average Symbol-Error-Rate as a function of the SNR. The y axis is typically in the log scale.
