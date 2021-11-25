function symbols = gray2(da)
sizeda = length(da);
for i=1:1:sizeda
    if(da(i)==0)
        symbols(i) = -1;
    elseif(da(i)==1)
        symbols(i) = 1;
    end
end
end