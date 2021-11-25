avgB=0;
avgA=0;
for i=1:1:26
    avgB = avgB + size(callB{i,2},2).*freq(i);
end

for i=1:1:26
    avgA = avgA + size(callA{i,2},2).*freq(i);
end