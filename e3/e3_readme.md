### e3)

#### q1)

Write a script that produces an array of N (input to the function) samples that are randomly generated, equally probable, independently distributed symbols -1, and 1. Name this array is TR.


#### q2)

Write a script that produces a real (one-dimensional) Additive White Gaussian Noise (AWGN) vector of N (input to the function) samples and of an SNR of x dB (input function) compared to the random signal of Question 1. Name this array as N.


#### q3)

1) Write a script that: Produces the array RC=TR+AWGN for an SNR of 5 dB and for N=100; Decodes RC using the following rule. If RC≥0 assume that 1 was transmitted. If RC<0 assume that -1 was transmitted. Calculates the percentage of errors (i.e., symbol error rate/SER).
2) Repeat step 1 several times. What do you observe?
3) Repeat step 1 several times but with N=1000. What do you observe?
4) Change the decoding rule to: If RC≥0.5 assume that 1 was transmitted. If RC<0.5 assume that -1 was transmitted. 
