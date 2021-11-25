function ber = ber(symbols,ektimisi)
cntr= 0;
if length(symbols)==length(ektimisi)
    for k=1:length(symbols)
        if(symbols(k)~=ektimisi(k))
            cntr = cntr+1;
        end
    end
else
    for k=1:length(ektimisi)
        if(symbols(k)~=ektimisi(k))
            cntr = cntr+1;
        end
    end
    cntr = cntr + (length(symbols)-length(ektimisi)); %we count the non send bits because of the mapper as error
end
ber = cntr/length(symbols);
end