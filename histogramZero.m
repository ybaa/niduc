function [  ] = histogramZero( dane,zakres )

%rysowanie histogramu dlugosciami ciagow zer

ileZerDoHistogramu(1) = 0;      %robimy gumow¹ tablice


j = 1;                          %pokazuje kolej¹ pozycjê na któr¹ wpisaæ
c = 1;
for i = 1 : 1 : zakres
   
   if i ~=c
       continue
   end
    
    
   licznik = 0;
   
   while dane(i) == 0
        licznik = licznik + 1;    
        i = i + 1;
        c = i;

       if i > zakres
           break;
       end

   end
   
   if licznik ~= 0
       ileZerDoHistogramu(j) = licznik;
       j = j + 1; 
   end
   
   c = c + 1;
    
end

hist(ileZerDoHistogramu,20);
end

