clc
%{

%wyswietla losowe liczby z zakresu meidzy  0 - 1
zakres = 40;

disp('LOSOWE LICZBY Z ZAKRESU 0 - 1')
dane = rand(1,zakres)


dane = random(zakres,dane,0.999999);

%wyświetla dane zaokrąglone do 0 lub 1
disp('WYSWIETLANIE ZAOKRAGLONYCH DANYCH DO 0 LUB 1')
disp(dane)


dane = scramblerDVB(zakres,dane);
disp('WYSWIETLANIE DANYCH PO SCRAMBLEROWANIU SCRAMBLEREM DVB')
disp(dane)

    
    
[dane,daneTrans] = transformToVolt(zakres,dane);

disp('WYSWIETLANIE DANYCH PO TRANSFORMACJI NA WOLTY')
disp(daneTrans)


daneZaklocone = noise (zakres, daneTrans);
disp('WPROWADZENIE ZAKOLCEN')
disp(daneZaklocone)

%}

figure(1)
%wyswietla losowe liczby z zakresu meidzy  0 - 1
zakres = 4000;
dane = rand(1,zakres);
dane = random(zakres,dane,0.999999);
dane = scramblerDVB(zakres,dane);
[ileZer, ileJedynek] = counter(dane,zakres);
subplot(1,3,1)
hist(dane,2)


dane1 = rand(1,zakres);
dane1 = random(zakres,dane1,0.0000001);
dane1 = scramblerDVB(zakres,dane1);
[ileZer1, ileJedynek1] = counter(dane,zakres);
subplot(1,3,2);
hist(dane1,2);

dane2 = rand(1,zakres);
dane2 = random(zakres,dane2,0.5);
dane2 = scramblerDVB(zakres,dane2);
[ileZer2, ileJedynek2] = counter(dane,zakres);
subplot(1,3,3)
hist(dane2,2)


figure(2)
%wyswietla losowe liczby z zakresu meidzy  0 - 1
dane3 = rand(1,zakres);
dane3 = random(zakres,dane3,0.999999);
dane3 = scramblerNaiwny(zakres,dane3);
[ileZer, ileJedynek] = counter(dane3,zakres);
subplot(1,3,1)
hist(dane3,2)


dane4 = rand(1,zakres);
dane4 = random(zakres,dane4,0.0000001);
dane4 = scramblerNaiwny(zakres,dane4);
[ileZer, ileJedynek] = counter(dane4,zakres);
subplot(1,3,2)
hist(dane4,2)

dane5 = rand(1,zakres);
dane5 = random(zakres,dane5,0.5);
dane5 = scramblerNaiwny(zakres,dane5);
[ileZer, ileJedynek] = counter(dane5,zakres);
subplot(1,3,3)
hist(dane5,2)


