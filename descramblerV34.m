function [ daneOut ] = descramblerV34( zakres,dane )

sync = [ 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 0 0 1 ]';

for c = 1 : 1 : zakres
    
    xor1 = xor ( sync(18), sync(23));
    sync = circshift(sync,1);
    sync(1) = dane(c);
    
    daneOut(c) = xor (xor1, dane(c));

    
    

end

end

