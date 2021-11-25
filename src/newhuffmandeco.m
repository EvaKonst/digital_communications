function [decoded] = stackdeco(encoded,dict) 

size_of_dic = size(dict,1);

function [dictEncosz,symbol] = find(kwdikas)
symbol=[];


for j = 1:size_of_dic
    dictEnco = cell2mat(dict(j,2));
    dictEncosz = size(dictEnco, 2);
   size = size(kwdikas, 2); 
    if dictEncosz > size
        break;
    end
    if isequal(size,dictEncosz) && isequal(dictEnco,kwdikas)
        symbol = cell2mat(dict(j,1));  
        break;
    end
end
end

start = 1;
finish = 1;
decoded = []; 
[n1, n2] = size(encoded);
if n1 > n2
    n = n1;
else
    n = n2;
end

while finish < n
   [dictEncosz,symbol] = find(encoded(start:finish));
  
    decoded =[decoded symbol];
    
    start = finish + 1;
    finish = finish + dictEncosz;

end