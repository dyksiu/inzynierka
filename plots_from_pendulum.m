clc
clear all

%% WCZYTANIE DANYCH
load('PID_CartPos_ex.mat');
load('eADRC_CartPos_ex.mat');
load('time_ex.mat');
load('zadana.mat');

pozycja_PID = save_CartPos_ex;
pozycja_eADRC = CartPos_ex;
czas = time_ex;
pozycja_zadana = zadana;

% Uchyby
uchyb_PID = pozycja_zadana - pozycja_PID;
uchyb_eADRC = pozycja_zadana - pozycja_eADRC;
roznica_obu = abs(uchyb_PID - uchyb_eADRC);

%% PLOTOWANIE

figure
subplot(3,1,1)
plot(czas,pozycja_eADRC,'-');
hold on
plot(czas,pozycja_PID,'--');
hold on
plot(czas,pozycja_zadana);
grid on
xlabel('Czas [s]')
ylabel('Wartość')
legend('eADRC','PID','Zadana')
xlim([0,10])

subplot(3,1,2)
plot(czas,uchyb_eADRC);
hold on
plot(czas,uchyb_PID,'--');
grid on
xlabel('Czas [s]')
ylabel('Wartość')
legend('uchyb eADRC','uchyb PID')
xlim([0,10])


subplot(3,1,3)
plot(czas,roznica_obu)
grid on
xlabel('Czas [s]')
ylabel('Wartość')
legend('Różnica uchybów')
xlim([0,10])

