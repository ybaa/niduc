
function [ dane ] = scramblerDVB( zakres,dane)


sync = [ 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 ]';



for c = 1 : 1 : zakres
    
    xor1 = xor ( sync(14), sync(15));
    sync = circshift(sync,1);
    sync(1) = xor1;
    
    dane(c) = xor(xor1, dane(c));
    %disp(sync)

end

end