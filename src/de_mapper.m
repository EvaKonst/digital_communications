function ektimisi = demapper(symbols1,M,gray)
s1len = length(symbols1);
if M==2
    ektimisi = zeros(s1len,1);
    for k=1:s1len
        if(symbols1(k)==1)
            ektimisi(k)=1;
        elseif(symbols1(k)==(0))
            ektimisi(k)=0;
        end
    end
elseif M==4
    ektimisi = zeros(2*s1len,1);
    if (gray == 0)
        for k=1:s1len
            j = (k*2)-2;
            switch symbols1(k)
                case 0
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                case 1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                case 2
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
            end
        end
    elseif (gray ==1)
        for k=1:s1len
            j = (k*2)-2;
            switch symbols1(k)
                case 0
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                case 1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                case 2
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
            end
        end  
    end
elseif M==8
    if (gray == 0)
        ektimisi = zeros(3*s1len,1);
        for k=1:s1len
            j = (k*3)-2;
            switch symbols1(k)
                case -7
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                case -5
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                case -3
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                case -1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                case 1
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                case 5
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                case 7
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
            end
        end
    elseif (gray == 1)
         ektimisi = zeros(3*s1len,1);
         for k=1:s1len
            j = (k*3)-2;
            switch symbols1(k)
                case -7
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                case -5
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                case -1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                case -3
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                case 7
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                case 5
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                case 1
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
            end
         end
    end
elseif M==16
    if (gray == 0)
        ektimisi = zeros(4*s1len,1);
        for k=1:s1len
            j = (k*4)-2;
            switch symbols1(k)
                   case -9
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case -13
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case -11
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case -15
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case -7
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case -5
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case -1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case -3
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case 15
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case 13
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case 11
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case 9
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case 7
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case 5
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case 1
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
            end
         end
    elseif (gray == 1)
         ektimisi = zeros(4*s1len,1);
         for k=1:s1len
            j = (k*4)-2;
            switch symbols1(k)
                case -15
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case -13
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case -11
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case -9
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case -7
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case -5
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case -3
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case -1
                    ektimisi(j) = 0;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case 15
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
                case 13
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case 11
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case 9
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 1;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case 7
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 1;
                case 5
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 0;
                    ektimisi(j+3) = 0;
                case 3
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 0;
                case 1
                    ektimisi(j) = 1;
                    ektimisi(j+1) = 0;
                    ektimisi(j+2) = 1;
                    ektimisi(j+3) = 1;
            end
         end
    end
end     