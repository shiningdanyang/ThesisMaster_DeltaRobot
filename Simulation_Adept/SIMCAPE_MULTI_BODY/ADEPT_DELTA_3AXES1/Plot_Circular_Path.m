% Chuyen vi theo cac truc
figure(1);
subplot (2,2,1); % Theo truc X
plot (tout,yout(:,10),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,11),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,12),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('X,Y,Z(m)');
legend ('X axis','Y axis', 'Z axis');
% Van toc theo cac truc
subplot(2,2,2);
plot (tout,yout(:,13),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,14),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,15),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('Velocity(m/s)');
% Gia toc theo cac truc
subplot(2,2,3);
plot (tout,yout(:,16),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,17),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,18),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('Acceleration(m/s^2)');
% Chuyen dong cua khau chu dong
figure(2);
subplot (2,2,1); % Theo truc X
plot (tout,yout(:,1),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,2),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,3),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('Angle (rad)');
legend ('Theta 1','Theta 2', 'Theta 3');
% Van toc theo cac truc
subplot(2,2,2);
plot (tout,yout(:,4),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,5),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,6),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('Velocity(rad/s)');
% Gia toc theo cac truc
subplot(2,2,3);
plot (tout,yout(:,7),'r','LineWidth',1);
grid on;
hold on;
plot (tout,yout(:,8),'b','LineWidth',1); % Theo truc Y
plot (tout,yout(:,9),'black','LineWidth',1); % Theo truc Z
xlabel('time(s)'); ylabel ('Acceleration(rad/s^2)');