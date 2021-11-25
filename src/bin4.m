function symbols = bin4(da)
sizeda = length(da);
m = 1;
rem = mod(sizeda , 2);
if(rem == 0)
for k=1:2:sizeda
    if(da(k)==0 & da(k+1)==0)
        symbols(m) = 0;
        m = m+1;
    elseif(da(k)==0 & da(k+1)==1)
        symbols(m) = 1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==0)
        symbols(m) = 2;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1)
        symbols(m) = 3;
         m = m+1;
    end
end
else
   for k=1:2:(sizeda-rem)
        if(da(k)==0 & da(k+1)==0)
        symbols(m) = 0;
        m = m+1;
    elseif(da(k)==0 & da(k+1)==1)
        symbols(m) = 1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==0)
        symbols(m) = 2;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1)
        symbols(m) = 3;
         m = m+1;
    end
    end
end 
end