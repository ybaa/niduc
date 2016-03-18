function [dane ] = scramblerNaiwny( zakres,dane )
%nasz naiwny scrambler

n =5;
for i = 1 : n : zakres
    help = 0;
    for j = i : 1 : i+n-1
        if dane(i) == dane(j)
            help = 1;
        else
            help = 0;
        end      
    end
    
    if help == 1
        if dane(i+n-1) == 0
            dane(i+n-1) = 1;
        else dane(i+n-1) == 1
            dane(i+n-1) = 0;
        end
    end
    
   %dodane aby nie wychodzi³o poza zakres
   if i == zakres -n
       break
   end
end


end

