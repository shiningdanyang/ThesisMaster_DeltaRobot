clc; close all; clear all;
%-----------------------------------------
r1 = 0.225; % Radius of circle crosses three revolute joints of the Base
r2 = 0.075;  % Radius of circle crosses three revolute joints of the Moving platform
r = r2 - r1;
l1 = 0.315;         % Kinematics Length of Active arms
l2 = 0.825;         % Kinematics length of Driven arms
phi1 = pi/2;
phi2 = 7*pi/6;
phi3 = 11*pi/6;
phi = [phi1; phi2; phi3];
g=9.8;
mo = 0.504; m1=1.954;m2=0.475;
%-----------------------------------------
% Quy dao cho truoc x(t), y(t), z(t)
to = 0; tf = 1.6; % Thoi gian chuyen dong
t1 = 0.4;t2=0.8;t3 = 1.2; % Cac thoi diem chuyen tiep
step = 0.01;
t = to:step:tf;
x = 0*t;
y = 0*t;
z = 0*t;
% Tinh ma tran Cz2
Az2 = [0.6500;0.8500;0;0;0;0];
Bz2 = [t2^5 t2^4 t2^3 t2^2 t2 1; tf^5 tf^4 tf^3 tf^2 tf 1; 5*t2^4 4*t2^3 3*t2^2 2*t2 1 0; 5*tf^4 4*tf^3 3*tf^2 2*tf 1 0; 20*t2^3 12*t2^2 6*t2 2 0 0; 20*tf^3 12*tf^2 6*tf 2 0 0];
Cz2 = Bz2\Az2;% ma tran he so da thuc quy dao tu t2 den tf
%Tinh ma tran Cz1
Az1 = [0.8500;0.6500;0;0;0;0];
Bz1 = [to^5 to^4 to^3 to^2 to 1; t2^5 t2^4 t2^3 t2^2 t2 1; 5*to^4 4*to^3 3*to^2 2*to 1 0; 5*t2^4 4*t2^3 3*t2^2 2*t2 1 0; 20*to^3 12*to^2 6*to 2 0 0; 20*t2^3 12*t2^2 6*t2 2 0 0];
Cz1 = Bz1\Az1;% ma tran he so da thuc quy dao tu t0 den t2

%Quy dao theo toa do z
for i=1:length(t)
   if (to<=t(i))&&(t(i)<=t2) % Quy dao tu t0 den t2
       z(i)= Cz1(1)*t(i)^5+Cz1(2)*t(i)^4+Cz1(3)*t(i)^3+Cz1(4)*t(i)^2+Cz1(5)*t(i)+Cz1(6);
   end
   if (t2<=t(i))&&(t(i)<=tf) % Quy dao tu t2 den tf
       z(i)= Cz2(1)*t(i)^5+Cz2(2)*t(i)^4+Cz2(3)*t(i)^3+Cz2(4)*t(i)^2+Cz2(5)*t(i)+Cz2(6);
   end
end
%Xay dung quy dao toa do x
Ax = [0;0.4;0;0;0;0];
Bx = [t1^5 t1^4 t1^3 t1^2 t1 1; t3^5 t3^4 t3^3 t3^2 t3 1; 5*t1^4 4*t1^3 3*t1^2 2*t1 1 0; 5*t3^4 4*t3^3 3*t3^2 2*t3 1 0; 20*t1^3 12*t1^2 6*t1 2 0 0; 20*t3^3 12*t3^2 6*t3 2 0 0];
Cx = Bx\Ax;% ma tran he so da thuc quy dao tu t1 den t3
%Quy dao toa do x
for i = 1:length(t)
    if (to<=t(i))&&(t(i)<=t1)
        x(i) = 0;
    end
    if(t1<=t(i))&&(t(i)<=t3)
        x(i)= Cx(1)*t(i)^5+Cx(2)*t(i)^4+Cx(3)*t(i)^3+Cx(4)*t(i)^2+Cx(5)*t(i)+Cx(6);
    end
    if(t3<=t(i))&&(t(i)<=tf)
       x(i) = 0.4; 
    end
end
y = 0.75*x;
%----------------------------------------
theta1 = 0*t;% Khoi tao vecto bien khop chu dong
theta2 = 0*t;
theta3 = 0*t;
% Giai bai toan dong hoc nguoc de suy ra bien khop
for i=1:length(t)
theta1(i) = inverse_kinematic (x(i),y(i),z(i),1);
theta2(i) = inverse_kinematic (x(i),y(i),z(i),2);
theta3(i) = inverse_kinematic (x(i),y(i),z(i),3);
end
theta = [theta1;theta2;theta3];
% Tinh cac dao ham cua toa do va bien khop
xd = differ(x,step); % Dao ham cap 1
yd = differ(y,step); 
zd = differ(z,step); 
xdd = differ(xd,step); %Dao ham cap hai
ydd = differ(yd,step);
zdd = differ(zd,step);
%dao ham bien khop khau chu dong
theta1d = differ(theta1,step); % Dao ham cap 1
theta2d = differ(theta2,step);
theta3d = differ(theta3,step);
theta1dd = differ(theta1d,step); %dao ham cap 2
theta2dd = differ(theta2d,step);
theta3dd = differ(theta3d,step);
thetadd = [theta1dd;theta2dd;theta3dd];
% Giai he vi phan cua ban may dong de tim nhan tu lagrange
% Phuong trinh vi phan ban may dua ve dang A*lamda = B
% trong do A(3x3) va B(3x1) la cac ma tran hoan toan xac dinh
% Suy ra lamda = inv(A)*B
% Xay dung ma tran A
lamda1 = 0*t;
lamda2 = 0*t;
lamda3 = 0*t;
for j = 1:length(t)
    A= zeros(3);
        A(1,1)= x(j)+r*cos(phi(1))-l1*cos(theta1(j))*cos(phi(1));%Hang 1
        A(1,2)= x(j)+r*cos(phi(2))-l1*cos(theta2(j))*cos(phi(2));
        A(1,3)= x(j)+r*cos(phi(3))-l1*cos(theta3(j))*cos(phi(3));
        
        A(2,1)= y(j)+r*sin(phi(1))-l1*cos(theta1(j))*sin(phi(1));%Hang 2
        A(2,2)= y(j)+r*sin(phi(2))-l1*cos(theta2(j))*sin(phi(2));
        A(2,3)= y(j)+r*sin(phi(3))-l1*cos(theta3(j))*sin(phi(3));
   
        A(3,1)= z(j)-l1*sin(theta1(j));%Hang 3
        A(3,2)= z(j)-l1*sin(theta2(j));
        A(3,3)= z(j)-l1*sin(theta3(j));
    % xay dung ma tran B
    B = [0;0;0];% Khoi tao
    B(1) = 0.5*(mo+3*m2)*xdd(j);
    B(2) = 0.5*(mo+3*m2)*ydd(j);
    B(3) = 0.5*((mo+3*m2)*zdd(j)+(mo+3*m2)*g);
% Tinh nhan tu lagrange lamda
    lamda = inv(A)*B;
    lamda1(j) = lamda(1);
    lamda2(j) = lamda(2);
    lamda3(j) = lamda(3);
end
% Thay cac gia tri tinh momen khop chu dong
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
figure(1); % Do thi momen ngau luc
plot (t,tau1,'r','LineWidth',2);
grid on;
hold on;
plot (t, tau2,'b','LineWidth',2);
plot (t,tau3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Momen(Nm)','FontSize',14,'FontName','time');
legend('tau1','tau2','tau3');

figure (2); % Do thi goc quay khau chu dong
plot (t,theta1,'r','LineWidth',2);
grid on;
hold on
plot (t,theta2,'b','LineWidth',2);
plot (t,theta3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta','FontSize',14,'FontName','time');
legend('theta1','theta2','theta3');
% Tinh toan cong suat tren cac khau chu dong
P1 =0*t; P2 = 0*t; P3 = 0*t;
for i=1:length(t)
P1(i) = tau1(i)*theta1d(i);
P2(i) = tau2(i)*theta2d(i);
P3(i) = tau3(i)*theta3d(i);
end
figure(3); % Do thi momen ngau luc
plot (t,P1,'r','LineWidth',2);
grid on;
hold on;
plot (t, P2,'b','LineWidth',2);
plot (t,P3,'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Power(W)','FontSize',14,'FontName','time');
legend('P1','P2','P3');