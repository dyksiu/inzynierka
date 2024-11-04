%% WCZYTANIE DANYCH ePID
epid_pozycja = out.PID_pozycja;
epid_zadana = out.PID_zadana;
epid_uchyb = out.PID_uchyb;

%% WCZYTANIE DANYCH eADRC
eadrc_pozycja = out.ADRC_pozycja;
eadrc_zadana = out.ADRC_zadana;
eadrc_uchyb = out.ADRC_uchyb;

%% PLOTOWANIE DANYCH ePID
figure
subplot(2,1,1)
hold on
plot(epid_zadana,'-')
hold on
plot(epid_pozycja,'--')
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
plot(epid_uchyb)
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
plot(eadrc_zadana,'-')
hold on
plot(eadrc_pozycja,'--')
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
plot(eadrc_uchyb)
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
plot(eadrc_uchyb,'-')
hold on
plot(epid_uchyb,'--')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość uchybu - eADRC','Wartość uchybu - ePID','FontSize',14)
title(' ')
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y

%% PLOTOWANIE RÓŻNICY UCHYBÓW
figure
plot(eadrc_uchyb-epid_uchyb,'-')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Różnica uchybów','FontSize',14)
title(' ')
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y