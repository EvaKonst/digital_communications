function symbols = binary16(da)
sizeda = length(da);
m = 1;

for k=1:4:sizeda
    if(da(k)==0 & da(k+1)==0 & da(k+2)==0 & da(k+3)==0)
        symbols(m) = -5;
        m = m+1;
    elseif(da(k)==0 & da(k+1)==0 & da(k+2)==0 & da(k+3)==1)
        symbols(m) = -7;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==0 & da(k+2)==1 & da(k+3)==0)
        symbols(m) = -1;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==0 & da(k+2)==1 & da(k+3)==1)
        symbols(m) = -3;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==0 & da(k+3)==0)
        symbols(m) = -11;
         m = m+1;
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==0 & da(k+3)==1)
        symbols(m) = -15;
         m = m+1;    
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==1 & da(k+3)==0)
        symbols(m) = -13;
         m = m+1; 
    elseif(da(k)==0 & da(k+1)==1 & da(k+2)==1 & da(k+3)==1)
        symbols(m) = -9;
         m = m+1;      
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==0 & da(k+3)==0)
        symbols(m) = 5;
        m = m+1;
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==0 & da(k+3)==1)
        symbols(m) = 7;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==1 & da(k+3)==0)
        symbols(m) = 3;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==0 & da(k+2)==1 & da(k+3)==1)
        symbols(m) = 1;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==0 & da(k+3)==0)
        symbols(m) = 11;
         m = m+1;
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==0 & da(k+3)==1)
        symbols(m) = 9;
         m = m+1;    
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==1 & da(k+3)==0)
        symbols(m) = 13;
         m = m+1; 
    elseif(da(k)==1 & da(k+1)==1 & da(k+2)==1 & da(k+3)==1)
        symbols(m) = 15;
         m = m+1;   
    end
end
end