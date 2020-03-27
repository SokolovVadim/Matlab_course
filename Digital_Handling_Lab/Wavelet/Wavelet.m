%feature('DefaultCharacterSet','default') % if encoding doesn't work 'default' -> 'UTF-8'
%Введение в вейвлет-анализ сигналов 
clear all
close all
%Начальные данные
N = 2048; %Количество точек ДПФ
t = linspace(0,1,N);
dt = 0.05;
%Данные варианта
f0 = 20;
f1 = 124;
f2 = 130;
A0 = 1;
A1 = 0.5;
A2 = 10^(-3);

%добавление шума (noise) к сигналу

randn('state',0);
g = 0.3;
noise = g*randn(size(t));
s_without_noise = A0*cos(2*pi*f0*t) + A1*cos(2*pi*f1*t) + A2*cos(2*pi*f2*t); %Полирамонический сигнал
s = s_without_noise + noise;
figure(1), plot(t,s_without_noise), grid on
title('Сигнал+шум');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel('Амплитуда ')
D = 20*log10(A2/A0); %динамический диапазон сигнала



%ДПФ(БПФ) зашумленного сигнала

Base = 2048;
Y = fft(s, Base);
Pyy = Y.*conj(Y)/Base;
f = 1000 * (0:Base/2-1)/Base; % откуда берется коэффициент 1000
magnPyy = 20*log10(Pyy(1:end/2)); %ось в децибелах
figure(2),%plot(f, Pyy(1:256))
plot(f, magnPyy), grid on
title('ДПФ');% Подпись графика
xlabel('Частота (Гц)');% Подпись оси х графика
ylabel(' Амплитуда (дБ) ');

% Применение окна (необходимо выбрать окно из возможных в системе)
window_nuttal = nuttallwin(length(s),'symmetric');
sw = s.*window_nuttal';

figure(3), plot(t,sw,'--') % 
title('Применение окна');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel(' Амплитуда ');

%ДПФ(БПФ) оконного преобразования
Y_sw = fft(sw, Base);
Pyy_sw = Y_sw.*conj(Y_sw)/Base;
magnPyy_sw = 20*log10(Pyy_sw(1:end/2));
f = 1000 * (0:Base/2-1)/Base; % откуда берется коэффициент 1000?
figure(4),plot(f, magnPyy_sw), grid on
title('Оконное ПФ');% Подпись графика
xlabel('Частота (Гц)');% Подпись оси х графика
ylabel(' Амплитуда (дБ)');

%Восстановлнный сигнал без окна

YY11 = ifft(Y, Base);
figure(5), plot(t,real(YY11))
title('Восстановленный сигнал');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel(' Амплитуда ');

%Восстановлнный сигнал без окна

YY11 = ifft(Y, Base);
figure(6), plot(t,real(YY11))
title('Восстановленный сигнал');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel(' Амплитуда ');

%Восстановлнный сигнал c окном

YY12 = ifft(Y_sw, Base);
figure(7), plot(t,real(YY12))
title('Восстановленный сигнал');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel(' Амплитуда ');

% ошибки восстановления

% figure(8) 
% subplot(2,1,1),plot(t,s_without_noise - real(YY11)),
% subplot(2,1,2),plot(t,s_without_noise.*window_nuttal' - real(YY12))
%% 

%вейвлет преобразование
% !!! Здесь необходимо внимательно разобраться в каких функциях можно
% использовать непрерывные вейвлеты, а в каких лишь дискретные или непрерывные отвечающие определенным условиям!  
wname = 'mexh'; % согласно своему варианту здесь необходимо задать свой вейвлет
ccfs = cwt(s, 1:1:128, wname, 'plot');
cwty = cwtft({s,1/(N-1)},'wavelet',wname);
%cwty.cfs(1:16,:) = 0;
xrec = icwtft(cwty,'plot');
figure(9),plot(t,s_without_noise,'b',t,xrec,'r')
title('Восстановленный сигнал');% Подпись графика
xlabel('Время (с)');% Подпись оси х графика
ylabel('Амплитуда ')
legend('Истинный сигнал', 'Восстановленный сигнал')

%дискретное вейвлет преобразование
wname_discret  = 'sym2';

cfd = zeros(6,length(s));
[c,l] = wavedec(s,10,wname_discret);

% Поясните работу данного участка кода
for m = 1:10
d = detcoef(c,l,m); d = d(ones(1,2^m),:);
cfd(m,:) = wkeep(d(:)',length(s));
end
cfd=cfd(:); I = find(abs(cfd)<sqrt(eps));
cfd(I) = zeros(size(I)); cfd = reshape(cfd,10,length(s));

figure(10),colormap(pink(16)), img = image(flipud(wcodemat(cfd,64,'row')));
title('Быстрое вейвлет преобразование');% Подпись графика
ylabel('Уровень, m'); xlabel('Временной сдвиг, b');