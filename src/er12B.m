fid = fopen('kwords.txt');
data = textscan(fid,'%s');
fclose(fid);
temp = data{1}(:,1)
temp = strjoin(temp)
temp= temp(find(~isspace(temp)))
temp(regexp(temp,'[-/]'))=[]
idx = isstrprop(temp,'upper') ;
temp(idx) = lower(temp(idx))
temp = split(temp,'')
temp = temp(~cellfun(@isempty,temp));
callB = newhuffmandict(engalpha,freq);
callB([1:96,1:96],:)=[]
encB = newhuffmanenco(temp,callB);