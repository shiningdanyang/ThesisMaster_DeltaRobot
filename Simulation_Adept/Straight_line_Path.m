% Thoong soos quyx ddaoj
to = 0; % Thoiwf ddieemr batws ddaauf chuyeenr ddoongj
tf = 2; % Thoiwf gian chuyeenr ddoongj
xo = -0.4; yo =-0.3; zo=0.8; % Toaj ddooj ddieemr ddaauf
xf = 0.4; yf = 0.3; zf = 0.6; % Toaj ddooj ddieemr cuoois
t = 0:0.01:tf;
% Quyx ddaoj Kane
x = xo + (xf-xo)*(t-to)/(tf-to)-((xf-xo)/(2*pi))*sin(2*pi*(t-to)/(tf-to));
% Tinhs cacs heej soos lieen heej tuyeens tinhs giuawx toaj ddooj y, z theo x
% yo = a1*xo + b1;
% yf = a1*xf + b1;
% zo = a2*xo + b2;
% zf = a2*xf + b2;
A1 = [xo 1; xf 1];
B1 = [yo;yf];
K1 = inv(A1)*B1;
B2 = [zo;zf];
K2 = inv(A1)*B2;
y = K1(1)*x+K1(2);
z = K2(1)*x+K2(2);
% Vaanj toocs quyx ddaoj
xd = (xf-xo)/(tf-to)-(xf-xo)/(tf-to)*cos(2*pi*(t-to)/(tf-to));
yd = K1(1)*xd;
zd = K2(1)*xd;
% Gia toocs quyx ddaoj
xdd = (xf-xo)/(tf-to)^2*sin(2*pi*(t-to)/(tf-to));
ydd = K1(1)*xdd;
zdd = K2(1)*xdd;
% Vex cacs ddoof thij
figure (1);
% DDoof thij cacs toaj ddooj theo thoiwf gian
subplot (2,2,1)
plot (t,z,'r','LineWidth',2);
hold on;
plot (t,x,'LineWidth',2);
plot (t,y,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('x,y,z (m)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');
% DDoof thij vaanj toocs theo thoiwf gian
subplot (2,2,2);
plot (t,zd,'r','LineWidth',2);
grid on;
hold on;
plot (t,xd,'LineWidth',2);
plot (t,yd,'k','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Velocity (m/s)','FontSize',14,'FontName','time');
% DDoof thij gia toocs theo thoiwf gian
subplot (2,2,3);
plot (t,zdd,'r','LineWidth',2);
grid on;
hold on;
plot (t,xdd,'LineWidth',2);
plot (t,ydd,'k','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Acceleration (m/s^2)','FontSize',14,'FontName','time');
% DDoof thij quyx ddaoj
figure(2);
plot3 (x,y,z,'LineWidth',2);
grid on;
xlabel('X(m)','FontSize',14,'FontName','time');
ylabel('Y(m)','FontSize',14,'FontName','time');
zlabel('Z(m)','FontSize',14,'FontName','time');