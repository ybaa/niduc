function [ dane, daneTrans ] = transformToVolt( zakres,dane )
%transformacja na wolty
for i = 1 : 1 : zakres
    if dane(i) == 1
        daneTrans(i) = 5;
    else
        daneTrans(i) = 0;
        
    end

end


end

