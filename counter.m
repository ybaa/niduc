function [ ileZer, ileJedynek ] = counter( dane,zakres )


ileZer = 0;
ileJedynek = 0;

for i = 1 : 1 : zakres
    if dane(i) == 1
        ileZer = ileZer + 1;
    else
        ileJedynek = ileJedynek + 1;
        
    end

end

end

