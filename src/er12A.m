nchar = 10000;
freq = [ 8.167 1.492 2.782 4.253 12.702 2.228 2.015 6.094 6.966 ...
    0.153 0.772 4.025 2.406 6.749 7.507 1.929 0.095 5.987 6.327 ...
    9.056 2.758 0.978 2.36 0.15 1.974 0.075]./100; 

str = char(randsample('a':'z',nchar,true,freq)); 

disp(str)
str = split(str,'')
str = str(~cellfun(@isempty,str));
str = strcat(str,{' '});
row = cell2mat(str.');

engalpha = {'e';'a';'r';'i';'o';'t';'n';'s';'l';'c';'u';'d';'p';'m';'h';'g';'b';'f';'y';'w';'k';'v';'x';'z';'j';'q'};
callA = newhuffmandict(engalpha,freq);
callA([1:96,1:96],:)=[]
encA = newhuffmanenco(row,callA);
