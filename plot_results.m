% Access the signals from out.logsout

theta = out.logsout.get('theta').Values.Data;
t_theta = out.logsout.get('theta').Values.Time;
omega = out.logsout.get('omega').Values.Data;
t_omega = out.logsout.get('omega').Values.Time;
omega_motor = out.logsout.get('omega_motor').Values.Data;
t_omega_motor = out.logsout.get('omega_motor').Values.Time;
voltage = out.logsout.get('voltage').Values.Data;
t_voltage = out.logsout.get('voltage').Values.Time;
current = out.logsout.get('current').Values.Data;
t_current = out.logsout.get('current').Values.Time;

% Create the first figure
figure;

% Subplot for theta
subplot(2, 1, 1);
plot(t_theta, theta, 'LineWidth', 2);
ylabel('\theta (deg)');
set(gca, 'FontSize', 12);
title('Angular position');
grid on;

% Subplot for omega
subplot(2, 1, 2);
plot(t_omega, omega, 'LineWidth', 2);
hold on;
plot(t_omega_motor, omega_motor, 'LineWidth', 2);
hold off;
ylabel('\omega (rad/s)');
xlabel('Time (s)');
legend({'Pendulum', 'Motor'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
title('Angular speed');
grid on;

% Create the second figure
figure;

% Subplot for voltage
subplot(2, 1, 1);
plot(t_voltage, voltage, 'LineWidth', 2);
ylabel('Voltage (V)');
set(gca, 'FontSize', 12);
title('Voltage input');
grid on;

% Subplot for current
subplot(2, 1, 2);
plot(t_current, current, 'LineWidth', 2);
hold off;
ylabel('Current (A)');
xlabel('Time (s)');
title('Current');
set(gca, 'FontSize', 12);
grid on;