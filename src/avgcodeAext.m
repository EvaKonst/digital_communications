avgAext=0;
for i=1:1:676
    avgAext = avgAext + size(callAext{i,2},2).*freqposs(i);
end