freq1=[1.492 0.095 0.153 4.025 8.167 5.987 1.929 7.507 4.253 1.974 2.758 6.966 6.749 2.015 12.702 2.406 0.075 2.782 6.094 2.228 0.772 0.978 9.056 2.36 6.327 0.15]./100;
freqposs=[freq1(:).*(freq1(:))'];
freqposs=freqposs(:);
allcombs={
    'aa';
    'ab';
    'ac';
    'ad';
    'ae';
    ...
    'zz';}

strext = randsample(allcombs,5000,true,freqposs);
callAext=huffmandict(allcombs,freqposs);
encAext=huffmanenco(strext,callAext);