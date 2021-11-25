function [r,N0] = awgn(sm,SNR,M)

Es = 1; 
Eb = Es / log2(M);
N0 = Eb/(10^(SNR/10));

[m, n] = size(sm);
noise = sqrt(N0 / 2) * randn(m,n);

r = sm + noise;