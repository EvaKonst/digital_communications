function symbols1 = foratis(rnew,M)

if M>2
    Eg=1;
else
    Eg=3/M^2-1;
end

for m = 1: M
    s(m, 1) = sqrt(Eg/2)*(2*m-1-M);
end

[rsize, ~] = size(rnew);
for j =1: rsize-1
    for m = 1: M
        tmp(m, 1) = norm([rnew(j,1),rnew(j+1,1)] - s(m,:));
    end
[~, symbols1(j, 1)] = min(tmp);
end

symbols1 = mod(symbols1,M);