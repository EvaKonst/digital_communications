entropy=0;
for j=1:1:length(y)
    entropy=entropy-y(j-1) * log2(y(j,1));
end
efficiency=entropy/sum(y.*length(xq));