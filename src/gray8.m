function symbols = gray8(da)
sizeda = length(da);
m = 1;
ypoloipo = mod(sizeda , 3);

if(ypoloipo == 0)
    
for k=1:3:sizeda
    if(da(k)==0 & da(k+1)==0 & da(k+2)==0)
        symbols(m) = -7;
        m = m+1;
    elseif(da(k)==0 & da(k+1)==0 & da(k+2)==1)
        symbols(m) = -5;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==1)
        symbols(m) = -3;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==0)
        symbols(m) = -1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==0)
        symbols(m) = 1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==1)
        symbols(m) = 3;
         m = m+1;    
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==1)
        symbols(m) = 5;
         m = m+1; 
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==0)
        symbols(m) = 7;
         m = m+1;      
    end
end
else
   for k=1:3:(sizeda-ypoloipo)
           if(da(k)==0 & da(k+1)==0 & da(k+2)==0)
        symbols(m) = -7;
        m = m+1;
    elseif(da(k)==0 & da(k+1)==0 & da(k+2)==1)
        symbols(m) = -5;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==1)
        symbols(m) = -3;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==0)
        symbols(m) = -1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==0)
        symbols(m) = 1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==1)
        symbols(m) = 3;
         m = m+1;    
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==1)
        symbols(m) = 5;
         m = m+1; 
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==0)
        symbols(m) = 7;
         m = m+1;      
    end
   end
end
end