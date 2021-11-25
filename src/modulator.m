function sm = modulator(symbols,M)

symbolSize = length(symbols);

Tsymbol = 40;
Tc = 4;
fc = 1 / Tc;
Es = 1;

g = sqrt(2 * Es / Tsymbol);

sm = zeros(M, Tsymbol);

for m = 1: symbolSize
    for t = 1: Tsymbol
        sm(m, t) = (2*symbols(m)-1-M) * g * cos(2*pi*fc*t);
    end
end
end