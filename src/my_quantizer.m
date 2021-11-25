function [xq, centers] = my_quantizer(x, N, min_value, max_value)

levels=2^N;
centers=zeros(levels,1);
lenper=2*max_value/levels;

mesoperioxes=zeros(levels-1,1);

plmeso=length(mesoperioxes);

for i=1:1:plmeso
    mesoperioxes(i,1)= min_value + i*lenper;
end

for j=1:1:plmeso
    centers(j,1)=mesoperioxes(j,1)-lenper/2;
end

centers(levels,1)=mesoperioxes(plmeso,1)+lenper/2;

deigmata=length(x);

for k=1:1:deigmata
    thesi=binarysearch(x(k,1),mesoperioxes,plmeso);
    xq(k,1)=centers(thesi,1);
end

function deik= binarysearch(val,mesoperioxes,plmeso)
low=1;
high= plmeso + 1;
deik=fix((low+high)/2);
while(low<high)&&(deik~=1)
    if (val >= mesoperioxes(deik-1,1)) && (val<mesoperioxes(deik,1))
        return;
    elseif val >= mesoperioxes(deik,1)
        low=deik;
    else
        high=deik-1;
    end
    deik=fix((low+high)/2);
    if(high-low)==1
        deik=high;
        return;
    end
end
deik=low;
return;
return;