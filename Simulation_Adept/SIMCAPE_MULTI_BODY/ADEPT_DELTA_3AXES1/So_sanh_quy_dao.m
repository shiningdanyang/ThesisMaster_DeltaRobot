% So sanhs quyx ddaoj mong muoons vaf quyx ddaoj thucwj tees
% Quyx ddaoj mong muoons theo cacs trucj
figure(1);
subplot (2,2,1); % Theo trucj X
plot (ans1(:,1),ans1(:,2),'r','LineWidth',1); % Theo trucj X
grid on;
hold on;
plot (ans(:,1),ans(:,2),'r','LineWidth',1);
xlabel('time(s)'); ylabel ('X(m)');
subplot(2,2,2);
plot (ans1(:,1),ans1(:,3),'b','LineWidth',1); % Theo trucj Y
grid on;
hold on;
plot (ans(:,1),ans(:,3),'b','LineWidth',1);
xlabel('time(s)'); ylabel ('Y(m)');
subplot(2,2,3);
plot (ans1(:,1),ans1(:,4),'black','LineWidth',1); % Theo trucj Z
grid on;
hold on;
plot (ans(:,1),ans(:,4),'black','LineWidth',1);
xlabel('time(s)'); ylabel ('Z(m)');
% Sai soos quyx ddaoj theo cacs trucj
figure(2)
error = ans1 - ans;
subplot (2,2,1); % Theo trucj X
plot (tout, error(:,2),'r','LineWidth',1.5);
xlabel('time(s)'); ylabel ('error-X-axis (m)');
grid on;
subplot (2,2,2); % Theo trucj Y
plot (tout, error(:,3),'b','LineWidth',1.5);
xlabel('time(s)'); ylabel ('error-Y-axis (m)');
grid on;
subplot (2,2,3); % Theo trucj Z
plot (tout, error(:,4),'black','LineWidth',1.5);
xlabel('time(s)'); ylabel ('error-Z-axis (m)');
grid on;