function [ dane ] = random( zakres,dane, prog )

%petla do losowania wyników z przewag¹ 0
for c = 1:zakres
    if dane(c) > prog
        dane(c) = 1;
   
     
    else
        dane(c) = 0;
    end
    
end
end

