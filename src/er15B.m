fkw1=[8.72 1.47 2.29 2.27 10.53 0.68 2.01 2.78 9.05 0.2 15.62 5 2.12 7.15 6.29 1.89 0.01 5.14 5.84 5.17 2.13 0.44 0.79 0.07 1.93 0.41]./100;
fkwposs=[fkw1(:).*(fkw1(:))'];
fkwposs=fkwposs(:);
callBext=huffmandict(allcombs,fkwposs);
encBextB=huffmanenco(A,callBext);