function [xq,centers,D,emfaniseis]=occur(x,N,min_value,max_value)

D(1,1)=1;
levels=2^N;
lenper=(max_value-min_value)/levels;
mesoperioxes=zeros(levels-1,1);
plmeso=length(mesoperioxes);
epsilon=10^(-16);

for j=1:1:plmeso
    mesoperioxes(j,1)= min_value + j*lenper;
end

anamenomeni= zeros(levels,1);

for j=1:1:plmeso
    anamenomeni(j,1)=mesoperioxes(j,1)- lenper/2;
end

anamenomeni(levels,1)=mesoperioxes(plmeso,1)+lenper/2;
deigmata = length(x);

for i= 2:1:10^5
    emfaniseis = zeros(levels,1);
    kentraMazas = zeros(levels,1);
    
    for j=1:1:deigmata
        thesi = binarysearch(x(j,1),mesoperioxes,plmeso);
        emfaniseis(thesi,1)=emfaniseis(thesi,1) + 1;
        kentraMazas(thesi,1)=kentraMazas(thesi,1)+ x(j,1);
        xq(j,1)=anamenomeni(thesi,1);
    end

    for j=1:1:levels
        if kentraMazas(j,1)==0
            if j==1
                anamenomeni(j,1)=mesoperioxes(j,1);
            else
                anamenomeni(j,1)=mesoperioxes(j-1,1);
            end
        else
            anamenomeni(j,1)=kentraMazas(j,1)/emfaniseis(j,1);
        end
    end
    
    for j=1:1:plmeso
        mesoperioxes(j,1)=(anamenomeni(j,1) + anamenomeni(j+1,1))/2;
    end
    
    D(i,1)=mean((x-xq).^2);
    if abs(D(i,1)-D(i-1,1))<epsilon
        centers=anamenomeni;
        return;
    end
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