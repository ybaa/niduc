clear
%wyswietla losowe liczby z zakresu meidzy  0 - 1
dane = rand(1,16)

zakres = 16;

%petla do losowania wyników z przewag¹ 1
for c = 1:zakres
    if dane(c) > 0.9999999
        dane(c) = 1;
    
     
    else
        dane(c) = 0;
    end
    
end

%wyœwietla dane zaokr¹glone do 0 lub 1
disp(dane)


%zmienianie co 5 wartoœci na przeciwn¹, jesli poprzednie 4 s¹ jednakowe
n = 5;
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

disp(dane)
    
    
%transformacja na wolty
for i = 1 : 1 : zakres
    if dane(i) == 1
        daneTrans(i) = 5;
    else
        daneTrans(i) = 0;
        
    end

end
disp(daneTrans)


%wprowadzenie zak³óceñ
zaklocenia = 0.1;
for i = 1 : 1 : zakres
danePoTrans(i) = daneTrans(i) + normrnd(0,zaklocenia);
end
disp(danePoTrans)