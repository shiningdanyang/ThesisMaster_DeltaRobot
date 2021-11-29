% So sanhs quyx ddaoj mong muoons vaf quyx ddaoj thucwj tees
% Quyx ddaoj mong muoons theo cacs trucj
XYZdataStruct_actual = load('data_trajectory_PD_actual.mat');
XYZdataStruct_desire = load('data_trajectory_PD_desired.mat');
XYZ_actual = XYZdataStruct_actual.xyz_a;
XYZ_desire = XYZdataStruct_desire.xyz_d;
figure(1);
subplot (2,2,1); % Theo trucj X
plot (XYZ_actual(1,:),XYZ_actual(2,:),'r','LineWidth',1); % Theo trucj X
grid on;
hold on;
plot (XYZ_desire(1,:),XYZ_desire(2,:),'r','LineWidth',1);
xlabel('time(s)'); ylabel ('X(m)');
subplot(2,2,2);
plot (XYZ_actual(1,:),XYZ_actual(3,:),'b','LineWidth',1); % Theo trucj Y
grid on;
hold on;
plot (XYZ_desire(1,:),XYZ_desire(3,:),'b','LineWidth',1);
xlabel('time(s)'); ylabel ('Y(m)');
subplot(2,2,3);
plot (XYZ_actual(1,:),XYZ_actual(4,:),'black','LineWidth',1); % Theo trucj Z
grid on;
hold on;
plot (XYZ_desire(1,:),XYZ_desire(4,:),'black','LineWidth',1);
xlabel('time(s)'); ylabel ('Z(m)');
% Sai soos quyx ddaoj theo cacs trucj
figure(2)
error = XYZ_actual - XYZ_actual;
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