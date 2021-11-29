% Chuongw trinhf vex quyx ddaoj hinhf chuwx E
step = 0.01; % Buocws thoiwf gian
close all;
% Khai baos cacs ddieemr chuyeenr tieeps cuar quyx ddaoj
P1 = [0.2;0;0.7];
P2 = [0.2;0;0.9];
P3 = [0;0;0.9];
P4 = [0;0.4;0.9];
P5 = [0.2;0.4;0.9];
P6 = [0.2;0.4;0.7];
P7 = [0;0.2;0.7];
P8 = [0;0.2;0.9];
P9 = [0.2;0.2;0.9];
P10 = [0.2;0.2;0.7];
% Vex cacs dduongwf quyx ddaoj 
[x1,y1,z1] = LinePath_Kane (P1(1),P1(2),P1(3),P2(1),P2(2),P2(3),0,0.5); t1 = 0:step:0.5;% Duong tu P1 den P2 di xuong
[x2,y2,z2] = LinePath_Kane (P2(1),P2(2),P2(3),P3(1),P3(2),P3(3),0.5,1.5); t2 = 0.5:step:1.5;% Duong tu P2 den P3 di sang trai trong 1s
[x3,y3,z3] = LinePath_Kane (P3(1),P3(2),P3(3),P4(1),P4(2),P4(3),1.5,3.5); t3 = 1.5:step:3.5;  % Duong tu P3 den P4 di len trong 2s
[x4,y4,z4] = LinePath_Kane (P4(1),P4(2),P4(3),P5(1),P5(2),P5(3),3.5,4.5); t4 = 3.5:step:4.5;% Duong tu P4 den P5 di sang phai trong 1s
[x5,y5,z5] = LinePath_Kane (P5(1),P5(2),P5(3),P6(1),P6(2),P6(3),4.5,5); t5 = 4.5:step:5;% Duong tu P5 den P6 di len trong 0.5s
[x6,y6,z6] = LinePath_Kane (P6(1),P6(2),P6(3),P7(1),P7(2),P7(3),5,5.5); t6 = 5:step:5.5;
[x7,y7,z7] = LinePath_Kane (P7(1),P7(2),P7(3),P8(1),P8(2),P8(3),5.5,6); t7 = 5.5:step:6;
[x8,y8,z8] = LinePath_Kane (P8(1),P8(2),P8(3),P9(1),P9(2),P9(3),6,7);   t8 = 6:step:7;
[x9,y9,z9] = LinePath_Kane (P9(1),P9(2),P9(3),P10(1),P10(2),P10(3),7,7.5); t9 = 7:step:7.5;
x = [x1,x2,x3,x4,x5,x6,x7,x8,x9];
y = [y1,y2,y3,y4,y5,y6,y7,y8,y9];
z = [z1,z2,z3,z4,z5,z6,z7,z8,z9];
t = [t1,t2,t3,t4,t5,t6,t7,t8,t9];
% Tinhs cacs vaanj toocs chuyeenr ddoongj

   xd = differ(x,step); 
   yd = differ(y,step);
   zd = differ(z,step);   
% Tinhs cacs gia toocs cuar chuyeenr ddoongj
   xdd = differ(xd,step); 
   ydd = differ(yd,step);
   zdd = differ(zd,step);
% DDoongj hocj nguocwj tinhs gias trij cuar bieens khopws
theta1 = 0*t; theta2 = 0*t; theta3 = 0*t;
for i=1:length(t)
theta1(i) = inverse_kinematic (x(i),y(i),z(i),1);
theta2(i) = inverse_kinematic (x(i),y(i),z(i),2);
theta3(i) = inverse_kinematic (x(i),y(i),z(i),3);
end
theta1d = differ(theta1, step);
theta2d = differ(theta2, step);
theta3d = differ(theta3, step);

theta1dd = differ(theta1d, step);
theta2dd = differ(theta2d, step);
theta3dd = differ(theta3d, step);

% Vex cacs ddoof thij
figure (1);  % DDoof thij quyx ddaoj
plot3 (x,y,z,'LineWidth',2);
grid on;
xlabel('X(m)','FontSize',14,'FontName','time');
ylabel('Y(m)','FontSize',14,'FontName','time');
zlabel('Z(m)','FontSize',14,'FontName','time');
% DDoof thij cacs toaj ddooj theo thoiwf gian
figure (2); 
subplot (2,2,1); % DDoof thij chuyeenr vij
plot (t,z,'r','LineWidth',2);
hold on;
plot (t,x,'LineWidth',2);
plot (t,y,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('x,y,z (m)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');
subplot (2,2,2); % DDoof thij vaanj toocs
plot (t,zd,'r','LineWidth',2);
hold on;
plot (t,xd,'LineWidth',2);
plot (t,yd,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Velocity (m/s)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');
subplot (2,2,3); % DDoof thij gia toocs toc
plot (t,zdd,'r','LineWidth',2);
hold on;
plot (t,xdd,'LineWidth',2);
plot (t,ydd,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Acceleration (m/s^2)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');

% DDoof thij chuyeenr ddoongj cuar bieens khopws
figure (3); 
subplot (2,2,1); % DDoof thij gocs quay
plot (t,theta1,'r','LineWidth',2);
hold on;
plot (t,theta2,'LineWidth',2);
plot (t,theta3,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta (rad)','FontSize',14,'FontName','time');
legend('Theta1','Theta2','Theta3');
subplot (2,2,2); % DDoof thij vaanj toocs gocs
plot (t,theta1d,'r','LineWidth',2);
hold on;
plot (t,theta2d,'LineWidth',2);
plot (t,theta3d,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Thetad(rad/s)','FontSize',14,'FontName','time');
subplot (2,2,3); % DDoof thij gia toocs gocs
plot (t,theta1dd,'r','LineWidth',2);
hold on;
plot (t,theta2dd,'LineWidth',2);
plot (t,theta3dd,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Thetadd (rad/s^2)','FontSize',14,'FontName','time');