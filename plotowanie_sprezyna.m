%% WCZYTANIE DANYCH ePID
epid_pozycja_sprezyna = out.epid_sprezyna_pozycja;
epid_zadana_sprezyna = out.epid_sprezyna_zadana;
epid_uchyb_sprezyna = out.epid_sprezyna_uchyb;

%% WCZYTANIE DANYCH eADRC
eadrc_pozycja_sprezyna = out.eadrc_sprezyna_pozycja;
eadrc_zadana_sprezyna = out.eadrc_sprezyna_zadana;
eadrc_uchyb_sprezyna = out.eadrc_sprezyna_uchyb;

%% PLOTOWANIE DANYCH ePID
figure
subplot(2,1,1)
hold on
plot(epid_zadana_sprezyna,'-')
hold on
plot(epid_pozycja_sprezyna,'--')
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
plot(epid_uchyb_sprezyna)
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
plot(eadrc_zadana_sprezyna,'-')
hold on
plot(eadrc_pozycja_sprezyna,'--')
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
plot(eadrc_uchyb_sprezyna)
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
plot(eadrc_uchyb_sprezyna,'-')
hold on
plot(epid_uchyb_sprezyna,'--')
grid on
xlabel('Czas [s]','FontSize',14)
ylabel('Pozycja [m]','FontSize',14)
legend('Wartość uchybu - eADRC','Wartość uchybu - ePID','FontSize',14)
title(' ')
ax = gca;
ax.FontSize = 12;
ax.YLabel.FontSize = 12; % Etykieta osi Y
ax.YAxis.FontSize = 12;  % Wartości osi Y