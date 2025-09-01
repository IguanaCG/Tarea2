[t, x] = ode45(@sispend, [0 10], [0 0 1 0]);

figure;
plot(t, x(:, 1), 'r', 'LineWidth',1.5);
grid on;
xlabel('Tiempo [s]');
title('xc');
figure;
plot(t, x(:, 3), 'b', 'LineWidth',1.5);
grid on;
xlabel('Tiempo [s]');
title('alfa');