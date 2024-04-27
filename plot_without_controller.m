clc
%% Wykreślanie przebiegów bez żadnego regulatora

figure; 
subplot(2,1,1);
plot(out.x1, 'LineWidth', 2); 
grid on; 
title("");
xlabel("Czas symulacji [s]");
ylabel("Odległość [cm]");
set(gca, 'FontSize', 12); 

subplot(2,1,2);
plot(out.x2, 'LineWidth', 2); 
grid on; 
%title('Prędkość - x''', 'Interpreter', 'tex'); 
title("");
xlabel("Czas symulacji [s]");
ylabel("Prędkość [m/s]");
set(gca, 'FontSize', 12); 
set(gcf, 'Color', 'w'); 

figure
subplot(2,1,1)
plot(out.x3, 'LineWidth', 2); 
%title('Kąt - \theta', 'Interpreter', 'tex');
title("");
xlabel("Czas symulacji [s]");
ylabel("Kąt [rad]");
grid on
set(gca, 'FontSize', 12); 

subplot(2,1,2);
plot(out.x4, 'LineWidth', 2); 
grid on; 
%title('Prędkość kątowa- \theta''', 'Interpreter', 'tex');
title("");
xlabel("Czas symulacji [s]");
ylabel("Prędkość [rad/s]");
set(gca, 'FontSize', 12); 
set(gcf, 'Color', 'w'); 

figure
plot(out.u, 'LineWidth', 2); 
grid on; 
%title('Wymuszenie - u', 'Interpreter', 'tex'); 
title("");
xlabel("Czas symulacji [s]");
ylabel("Wartość");
set(gca, 'FontSize', 12); 
set(gcf, 'Color', 'w'); 