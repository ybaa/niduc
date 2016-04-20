function [ daneOut ] = syncSimulation( dane, zakres, k)
%wrzucamy tu dane poscramblowane

% dane - dane wejœciowe poscramblowane
% zakres - iloœæ danych wekœciowych
% k - d³ugoœæ paczki z danymi

syn = [1 0 1 0 1 0 1 1 1 1 0 0 1 1 1 0 ];


   daneOut = [dane(1 : 112) syn];
   
   disp(daneOut);
   
   
    
   















%{
bylo = 0;
c = 1
for i = 1 : 1 : zakres
   
    
    daneOut(c) = dane(i)
    c = c + 1;
    while c <= k+16 && c > k
        j = 1;
        daneOut(c) = syn (j);
        j = j + 1;
        c = c + 1;
        bylo = 1;
    end
    
     
     
    
    
end

%}




end

