function encoded = newhuffmanenco(shma, dict)

[m,n] = size(shma);

if (m==1 || n==1)
	[m,n] = size(shma);
	shma = mat2cell(shma, ones(1,m), ones(1,n) );
end


largeSz = 0;
dictSz = size(dict,1);

for i = 1 : dictSz
    tmp = size(dict{i,2},2);
    if (tmp > largeSz)
        largeSz = tmp;
    end
end

encoded = zeros(1, length(shma)*largeSz);

index = 1;
for i = 1 : length(shma)

    ithcode = [];
    for j = 1 : dictSz
        if( shma{i} == dict{j,1} )
            ithcode = dict{j,2};
            break;
        end
    end
    
    ithcodelgth = length(ithcode);
    encoded(index : index + ithcodelgth - 1) = ithcode;
    index = index + ithcodelgth;
end

encoded = encoded(1:index-1);

if( n == 1 )       
    encoded = encoded';   
end
