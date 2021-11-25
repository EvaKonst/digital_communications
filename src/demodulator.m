function rnew = demodulator(r)

Tsymbol = 40;

for t = 1: Tsymbol
    y(t, 1) = 1/sqrt(Tsymbol);
end

rnew = (r * y);