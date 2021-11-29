clc;
%-----------------------------------------
r1 = 0.225; % Radius of circle crosses three revolute joints of the Base
r2 = 0.075;  % Radius of circle crosses three revolute joints of the Moving platform
r = r2 - r1;
l1 = 0.3;         % Kinematics Length of Active arms
l2 = 0.4;         % Kinematics length of Driven arms
phi1 = pi/2;
phi2 = 7*pi/6;
phi3 = 11*pi/6;
phi = [phi1; phi2; phi3];
g=9.8;
mo = 0.504; 
m1=1.954;
m2=0.475;
%-----------------------------------------
step = 0.001;
t = 0:step:10 ; % Thoiwf gian moo phongr 10s
% Quyx ddaoj cho truocws x(t), y(t), z(t)
x = 0.3*(1-cos(t*pi/3));
y = 0.3*sin(t*pi/3);
z = 0*t+0.85;
theta1 = 0*t; % Khoiwr taoj vector bieens khopws chur ddoongj
theta2 = 0*t;
theta3 = 0*t;
% Giair baif toans ddoongj hocj nguocwj ddeer suy ra bieens khopws
for i=1:length(t)
theta1(i) = inverse_kinematic (x(i),y(i),z(i),1);
theta2(i) = inverse_kinematic (x(i),y(i),z(i),2);
theta3(i) = inverse_kinematic (x(i),y(i),z(i),3);
end
theta = [theta1;theta2;theta3];
% Tinhs cacs ddaoj hamf cuar toaj ddooj vaf bieens khopws
xd = differ(x,step); % DDaoj hamf caaps 1
yd = differ(y,step); 
zd = differ(z,step); 
xdd = differ(xd,step); %DDaoj hamf caaps 2
ydd = differ(yd,step);
zdd = differ(zd,step);
%DDaoj hamf bieens khopws khaau chur ddoongj
theta1d = differ(theta1,step); %DDaoj hamf caaps 1
theta2d = differ(theta2,step);
theta3d = differ(theta3,step);
theta1dd = differ(theta1d,step); %DDaoj hamf caaps 2
theta2dd = differ(theta2d,step);
theta3dd = differ(theta3d,step);
thetadd = [theta1dd;theta2dd;theta3dd];
% Giair heej vi phaan cuar banf mays ddoongj ddeer timf nhaan tuwr lagrange
% Phuongw trinhf vi phaan banf mays dduaw veef dangj A*lamda = B
% trong ddos A(3x3) va B(3x1) laf cacs ma traanj hoanf toanf xacs ddinhj
% => lamda = inv(A)*B

lamda1 = 0*t;
lamda2 = 0*t;
lamda3 = 0*t;
for j = 1:length(t)
    % Xaay dungwj ma traanj A
    A= zeros(3);
        A(1,1)= x(j)+r*cos(phi(1))-l1*cos(theta1(j))*cos(phi(1));%Hangf 1
        A(1,2)= x(j)+r*cos(phi(2))-l1*cos(theta2(j))*cos(phi(2));
        A(1,3)= x(j)+r*cos(phi(3))-l1*cos(theta3(j))*cos(phi(3));
        
        A(2,1)= y(j)+r*sin(phi(1))-l1*cos(theta1(j))*sin(phi(1));%Hangf 2
        A(2,2)= y(j)+r*sin(phi(2))-l1*cos(theta2(j))*sin(phi(2));
        A(2,3)= y(j)+r*sin(phi(3))-l1*cos(theta3(j))*sin(phi(3));
   
        A(3,1)= z(j)-l1*sin(theta1(j));%Hangf 3
        A(3,2)= z(j)-l1*sin(theta2(j));
        A(3,3)= z(j)-l1*sin(theta3(j));
    %Xaay dungwj ma traanj B
    B = [0;0;0];% Khoiwr taoj
    B(1) = 0.5*(mo+3*m2)*xdd(j);
    B(2) = 0.5*(mo+3*m2)*ydd(j);
    B(3) = 0.5*((mo+3*m2)*zdd(j)+(mo+3*m2)*g);
% Tinhs nhaan tuwr lagrange lamda
    lamda = inv(A)*B;
    lamda1(j) = lamda(1);
    lamda2(j) = lamda(2);
    lamda3(j) = lamda(3);
end
% Thay cacs gias trij tinhs moment khopws chur ddoongj
tau1 = 0*t;
tau2 = 0*t; tau3 = 0*t;
for i=1:length(t)
    tau1(i)= (m1*1/3+m2)*l1^2*theta1dd(i)-2*lamda1(i)*l1*((x(i)*cos(phi(1))+y(i)*sin(phi(1))+r)*sin(theta1(i))-z(i)*cos(theta1(i)))+(0.5*m1+m2)*g*l1*cos(theta1(i));%momen tren khau 1
end
for i=1:length(t)
    tau2(i)= (m1*1/3+m2)*l1^2*theta2dd(i)-2*lamda2(i)*l1*((x(i)*cos(phi(2))+y(i)*sin(phi(2))+r)*sin(theta2(i))-z(i)*cos(theta2(i)))+(0.5*m1+m2)*g*l1*cos(theta2(i));%momen tren khau 2
end
for i=1:length(t)
    tau3(i)= (m1*1/3+m2)*l1^2*theta3dd(i)-2*lamda3(i)*l1*((x(i)*cos(phi(3))+y(i)*sin(phi(3))+r)*sin(theta3(i))-z(i)*cos(theta3(i)))+(0.5*m1+m2)*g*l1*cos(theta3(i));%momen tren khau 3
end
figure(1); % DDoof thij moment ngaaux lucwj
plot (t,tau1,'r','LineWidth',2);
grid on;
hold on;
plot (t, tau2,'b','LineWidth',2);
plot (t,tau3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Momen(Nm)','FontSize',14,'FontName','time');
legend('tau1','tau2','tau3');

figure (2); % DDoof thij gocs quay khaau chur ddoongj
plot (t,theta1,'r','LineWidth',2);
grid on;
hold on
plot (t,theta2,'b','LineWidth',2);
plot (t,theta3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta','FontSize',14,'FontName','time');
legend('theta1','theta2','theta3');
% Tinhs toans coong suaats treen cacs khaau chur ddoongj
P1 =0*t; P2 = 0*t; P3 = 0*t;
for i=1:length(t)
P1(i) = tau1(i)*theta1d(i);
P2(i) = tau2(i)*theta2d(i);
P3(i) = tau3(i)*theta3d(i);
end
figure(3); % DDoof thij moment ngaaux lucwj
plot (t,P1,'r','LineWidth',2);
grid on;
hold on;
plot (t, P2,'b','LineWidth',2);
plot (t,P3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Power(W)','FontSize',14,'FontName','time');
legend('P1','P2','P3');