function [ daneOut, ileErr, zakres2 ] = syncSimulation( dane, zakres, k)
%wrzucamy tu dane poscramblowane

% dane - dane wejœciowe poscramblowane
% zakres - iloœæ danych wekœciowych
% k - d³ugoœæ paczki z danymi


%SYMULACJA $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
syn = [1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 ];
t=zakres+1;

while mod(zakres, 112) ~= 0
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
%LICZENIE B£ÊDNYCH BITÓW $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
zera = [0 0 0 0 0];
err = false;
ileErr = 0;
zakres2 = length(daneOut);
i = 1;

while i < zakres2
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
end
%{
for i = 1 : 1 : zakres2
   if zakres2-i < 17
       break;
   end
    
   if kontynuacja > 0
       kontynuacja  = kontynuacja - 1;
       continue;
   end
   
    if err
   
       if daneOut(i : i+15) == syn(1 : 16)
           err = false;
           kontynuacja = 16;
           continue
       end
       
       ileErr = ileErr + 1;
       disp(i);
       continue;
   end
   
   if dane(i : i+4) == zera(1 : 5)
     kontynuacja = 2;
     err = true;
     continue;
   end
%}

end

