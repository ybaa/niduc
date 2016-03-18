function [ daneZaklocone ] = noise( zakres, daneTrans )
%wprowadzenie zaklocen
zaklocenia = 0.1;
daneZaklocone = (1 : zakres);
for i = 1 : 1 : zakres
daneZaklocone(i) = daneTrans(i) + normrnd(0,zaklocenia);
end
end

