function [ daneOut, ileErr, zakres2 ] = syncSimulation( dane, zakres, k)
%wrzucamy tu dane poscramblowane

% dane - dane wej?ciowe poscramblowane
% zakres - ilo?? danych wek?ciowych
% k - d?ugo?? paczki z danymi


%SYMULACJA $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
syn = [1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 ];
t=zakres+1;

while mod(zakres, k) ~= 0
    dane(t)=0;
    zakres=zakres+1;
end

   daneOut =[];
   o = 0;
   for i = k : k : zakres-1
       
       daneStep = [dane(o+1 : i) syn];
       o = i;
       daneOut = [daneOut daneStep];
   end
%LICZENIE B??DNYCH BITÓW $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
zera = [0 0 0 0 0];
err = false;
ileErr = 0;
zakres2 = length(daneOut);
i = 1;

while i < zakres2
   if i < zakres2-16
        if err
       if daneOut(i : i+15) == syn(1 : 16)
           err = false;
           i = i + 15;
       else
            ileErr = ileErr + 1;
       end
    elseif daneOut(i : i+4) == zera(1 : 5)
     err = true;
     i = i + 3;
    end  
    disp(i);
   i = i + 1;
   disp(i);
   else
       ileErr = ileErr + 1;
       i = i + 1;
   end
end
   ileErr = ileErr + zakres2 - zakres - 16;

end