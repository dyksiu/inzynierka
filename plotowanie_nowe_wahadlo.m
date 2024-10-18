%% WCZYTANIE DANYCH ePID
epid_wahadlo_pozycja = out.epid_wahadlo_pozycja;
epid_wahadlo_zadana = out.epid_wahadlo_zadana;
epid_wahadlo_uchyb = out.epid_wahadlo_uchyb;

%% WCZYTANIE DANYCH eADRC
eadrc_wahadlo_pozycja = out.eadrc_wahadlo_pozycja;
eadrc_wahadlo_zadana = out.eadrc_wahadlo_zadana;
eadrc_wahadlo_uchyb = out.eadrc_wahadlo_uchyb;

%% PLOTOWANIE DANYCH ePID
figure
subplot(2,1,1)
hold on
plot(epid_wahadlo_zadana,'-')
hold on
plot(epid_wahadlo_pozycja,'--')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość zadana','Pozycja wyjściowa','FontSize',14)
ylim([0,1.2]);
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y

subplot(2,1,2)
hold on
plot(epid_wahadlo_uchyb)
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość uchybu','FontSize',14)
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y

%% PLOTOWANIE DANYCH eADRC
figure
subplot(2,1,1)
hold on
plot(eadrc_wahadlo_zadana,'-')
hold on
plot(eadrc_wahadlo_pozycja,'--')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość zadana','Pozycja wyjściowa','FontSize',14)
ylim([0,1.2]);
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y

subplot(2,1,2)
hold on
plot(eadrc_wahadlo_uchyb)
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość uchybu','FontSize',14)
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y

%% PLOTOWANIE OBU UCHYBÓW
figure
plot(eadrc_wahadlo_uchyb,'-')
hold on
plot(epid_wahadlo_uchyb,'--')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość uchybu - eADRC','Wartość uchybu - ePID','FontSize',14)
title(' ')
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y