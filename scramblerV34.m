function [ daneOut ] = scramblerV34( zakres,dane)


sync = [ 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 0 0 1 ]';



    for i = 1 : 1 : zakres
    
        xor1 = xor ( sync(18), sync(23));
        sync = circshift(sync,1);
        
        xor2 = xor(xor1, dane(i));
        sync(1) = xor2;
        daneOut(i) = xor2;
    
    
    
    end

end