clc
 %{
%histogramy dla descramblera zby sprawdzic czy dzia³a, a póŸniej ile jest
%ciagów zer w kazdym scramblerze

%histogramy wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego
%dane z przewaga 0 (same 0)
figure(1)
%wyswietla losowe liczby z zakresu meidzy  0 - 1
zakres = 4000;
daneDVB1 = rand(1,zakres);
daneDVB1 = random(zakres,daneDVB1,0.999999);
daneV34_1 = daneDVB1;
daneN1 = daneDVB1;
daneDVB1 = scramblerDVB(zakres,daneDVB1);
daneV34_1 = scramblerV34(zakres,daneV34_1);
daneN1 = scramblerNaiwny(zakres,daneN1);
%[ileZer, ileJedynek] = counter(dane,zakres);
subplot(1,3,1)
histogramZero(daneDVB1,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,2)
histogramZero(daneV34_1,zakres)
title('ilosc wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego, dane z przewaga 0 (same 0)');
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,3)
histogramZero(daneN1,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');


%histogramy wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego
%dane z przewaga 1
figure(2)
%wyswietla losowe liczby z zakresu meidzy  0 - 1
daneDVB2 = rand(1,zakres);
daneDVB2 = random(zakres,daneDVB2,0.0000001);
daneV34_2 = daneDVB2;
daneN2 = daneDVB2;
daneDVB2 = scramblerDVB(zakres,daneDVB2);
daneV34_2 = scramblerV34(zakres,daneV34_2);
daneN2 = scramblerNaiwny(zakres,daneN2);
%[ileZer, ileJedynek] = counter(dane,zakres);
subplot(1,3,1)
histogramZero(daneDVB2,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,2)
histogramZero(daneV34_2,zakres)
title('ilosc wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego, dane z przewaga 1 (same 1)');
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,3)
histogramZero(daneN2,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');


%histogramy wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego
%dane 50 - 50
figure(3)
%wyswietla losowe liczby z zakresu meidzy  0 - 1
daneDVB3 = rand(1,zakres);
daneDVB3 = random(zakres,daneDVB3,0.5);
daneV34_3 = daneDVB3;
daneN3 = daneDVB2;
daneDVB3 = scramblerDVB(zakres,daneDVB3);
daneV34_3 = scramblerV34(zakres,daneV34_3);
daneN3 = scramblerNaiwny(zakres,daneN3);
%[ileZer, ileJedynek] = counter(dane,zakres);
subplot(1,3,1)
histogramZero(daneDVB3,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,2)
histogramZero(daneV34_3,zakres)
title('ilosc wystapien dlugosci ciagow 0 dla scramblerow DVB, V34 i Naiwnego, dane losowe');
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');
subplot(1,3,3)
histogramZero(daneN3,zakres)
xlabel('dlugosc ciagu 0');
ylabel('ilosc wystapien');

%histogramy danych po descramblingu dla DVB
figure(4)
daneDVB4 = descramblerDVB(zakres, daneDVB1);
daneDVB5 = descramblerDVB(zakres, daneDVB2);
daneDVB6 = descramblerDVB(zakres, daneDVB3);
subplot(1,3,1);
hist(daneDVB4,2);
ylabel('ilosc wystapien');
xlabel('wartosc');
subplot(1,3,2);
hist(daneDVB5,2);
title('histogramy dla danych po descramblicnguDVB z przewaga 0, 1 i losowo');
ylabel('ilosc wystapien');
xlabel('wartosc');
subplot(1,3,3);
hist(daneDVB6,2);
ylabel('ilosc wystapien');
xlabel('wartosc');

%}


zakres = 112;
danePrzed = rand(1,zakres);
danePrzed = random(zakres,danePrzed,0.999999);
daneV34_1 = danePrzed;
daneV34_1 = scramblerV34(zakres,daneV34_1);
daneV34_2 = descramblerV34(zakres,daneV34_1);

disp('poscr');
disp(daneV34_1);
disp('geges');
ddd = syncSimulation(daneV34_1, zakres, 112);



