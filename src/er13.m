fkw=[15.62 10.53 9.05 8.72 7.15 6.29 5.84 5.17 5.14 5 2.78 2.29 2.27 2.13 2.12 2.01 1.93 1.89 1.47 0.79 0.68 0.44 0.41 0.2 0.07 0.01]/100;
engkwords = {'k';'e';'i';'a';'n';'o';'s';'t';'r';'l';'h';'c';'d';'u';'m';'g';'y';'p';'b';'w';'f';'v';'z';'j';'x';'q'};
callB3 = newhuffmandict(engkwords,fkw);
callB3([1:96,1:96],:)=[]
encB3 = newhuffmanenco(temp,callB3);