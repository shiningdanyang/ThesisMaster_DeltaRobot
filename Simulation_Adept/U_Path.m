to = 0; tf = 1.6; % Thoiwf gian chuyeenr ddoongj
t1 = 0.4;t2=0.8;t3 = 1.2; % Cacs thoiwf ddieemr chuyeenr tieeps
t = to:0.01:tf;
x = 0*t;
y = 0*t;
z = 0*t;
% Tinhs ma traanj Cz2
Az2 = [0.6500;0.8500;0;0;0;0];
Bz2 = [t2^5 t2^4 t2^3 t2^2 t2 1; tf^5 tf^4 tf^3 tf^2 tf 1; 5*t2^4 4*t2^3 3*t2^2 2*t2 1 0; 5*tf^4 4*tf^3 3*tf^2 2*tf 1 0; 20*t2^3 12*t2^2 6*t2 2 0 0; 20*tf^3 12*tf^2 6*tf 2 0 0];
Cz2 = Bz2\Az2;% ma traanj heej soos dda thucws quyx ddaoj tuwf t2 ddeens tf
%Tinhs ma traanj Cz1
Az1 = [0.8500;0.6500;0;0;0;0];
Bz1 = [to^5 to^4 to^3 to^2 to 1; t2^5 t2^4 t2^3 t2^2 t2 1; 5*to^4 4*to^3 3*to^2 2*to 1 0; 5*t2^4 4*t2^3 3*t2^2 2*t2 1 0; 20*to^3 12*to^2 6*to 2 0 0; 20*t2^3 12*t2^2 6*t2 2 0 0];
Cz1 = Bz1\Az1;% ma traanj heej soos dda thucws quyx ddaoj tuwf t0 ddeens t2

%Quyx ddaoj theo toaj ddooj z
for i=1:length(t)
   if (to<=t(i))&&(t(i)<=t2) % Quyx ddaoj tuwf t0 ddeens t2
       z(i)= Cz1(1)*t(i)^5+Cz1(2)*t(i)^4+Cz1(3)*t(i)^3+Cz1(4)*t(i)^2+Cz1(5)*t(i)+Cz1(6);
   end
   if (t2<=t(i))&&(t(i)<=tf) % Quyx ddaoj tuwf t2 ddeens tf
       z(i)= Cz2(1)*t(i)^5+Cz2(2)*t(i)^4+Cz2(3)*t(i)^3+Cz2(4)*t(i)^2+Cz2(5)*t(i)+Cz2(6);
   end
end
%Xaay dungwj quyx ddaoj toaj ddooj x
Ax = [0;0.4;0;0;0;0];
Bx = [t1^5 t1^4 t1^3 t1^2 t1 1; t3^5 t3^4 t3^3 t3^2 t3 1; 5*t1^4 4*t1^3 3*t1^2 2*t1 1 0; 5*t3^4 4*t3^3 3*t3^2 2*t3 1 0; 20*t1^3 12*t1^2 6*t1 2 0 0; 20*t3^3 12*t3^2 6*t3 2 0 0];
Cx = Bx\Ax;% ma traanj heej soos dda thucws quyx ddaoj tuwf t1 den t3
%Quyx ddaoj theo toaj ddooj x
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
% Tinhs cacs vaanj toocs theo cacs trucj chuyeenr ddoongj
%---Vaanj toocs theo trucj z
zd = 0*t;
for i = 1:length(t)
   if (to<=t(i))&&(t(i)<=t2) % Quyx ddaoj tuwf t0 ddeens t2
       zd(i)= 5*Cz1(1)*t(i)^4+4*Cz1(2)*t(i)^3+3*Cz1(3)*t(i)^2+2*Cz1(4)*t(i)+Cz1(5);
   end
   if (t2<=t(i))&&(t(i)<=tf) % Quyx ddaoj tuwf t2 ddeens tf
       zd(i)= 5*Cz2(1)*t(i)^4+4*Cz2(2)*t(i)^3+3*Cz2(3)*t(i)^2+2*Cz2(4)*t(i)+Cz2(5);
   end
end
% Vaanj toocs theo trucj x vaf y
xd = 0*t;
for i = 1:length(t)
   if (to<=t(i))&&(t(i)<=t1) % Quyx ddaoj tuwf t0 ddeens t2
       xd(i)= 0;
   end
   if (t1<=t(i))&&(t(i)<=t3) % Quyx ddaoj tuwf t2 ddeens tf
       xd(i)= 5*Cx(1)*t(i)^4+4*Cx(2)*t(i)^3+3*Cx(3)*t(i)^2+2*Cx(4)*t(i)+Cx(5);
   end
   if (t3<=t(i))&&(t(i)<=tf) % Quyx ddaoj tuwf t2 ddeens tf
       xd(i)= 0;
   end
end
yd = 0.75*xd;
% Tinhs gia toocs theo cacs trucj chuyeenr ddoongj
%---- Gia toocs theo trucj z
zdd = 0*t;
for i = 1:length(t)
   if (to<=t(i))&&(t(i)<=t2) % Quyx ddaoj tuwf t0 ddeens t2
       zdd(i)= 5*4*Cz1(1)*t(i)^3+4*3*Cz1(2)*t(i)^2+3*2*Cz1(3)*t(i)+2*Cz1(4);
   end
   if (t2<=t(i))&&(t(i)<=tf) % Quyx ddaoj tuwf t2 deens tf
       zdd(i)= 5*4*Cz2(1)*t(i)^3+4*3*Cz2(2)*t(i)^2+3*2*Cz2(3)*t(i)+2*Cz2(4);
   end
end
%---- Gia toocs theo trucj x vaf y
xdd = 0*t;
for i = 1:length(t)
   if (to<=t(i))&&(t(i)<=t1) % Quyx ddaoj tuwf t0 ddeens t2
       xdd(i)= 0;
   end
   if (t1<=t(i))&&(t(i)<=t3) % Quyx ddaoj tuwf t2 ddeens tf
       xdd(i)= 5*4*Cx(1)*t(i)^3+4*3*Cx(2)*t(i)^2+3*2*Cx(3)*t(i)+2*Cx(4);
   end
   if (t3<=t(i))&&(t(i)<=tf) % Quyx ddaoj tuwf t2 ddeens tf
       xdd(i)= 0;
   end
end
ydd = 0.75*xdd;
theta1 = 0*t; theta2 = 0*t; theta3 = 0*t;
for i=1:length(t)
theta1(i) = inverse_kinematic (x(i),y(i),z(i),1);
theta2(i) = inverse_kinematic (x(i),y(i),z(i),2);
theta3(i) = inverse_kinematic (x(i),y(i),z(i),3);
end
% Vex cacs ddoof thij
% Ddoof thij cacs toaj ddooj
figure(1);
subplot (2,2,1);
plot (t,z,'r','LineWidth',2);
hold on;
plot (t,x,'LineWidth',2);
plot (t,y,'k','LineWidth',2);
grid on;
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('x,y,z (m)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');

% Ddoof thij vaanj toocs
subplot (2,2,2);
plot (t,zd,'r','LineWidth',2);
grid on;
hold on;
plot (t,xd,'LineWidth',2);
plot (t,yd,'k','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Velocity (m/s)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');
% Ddoof thi gia toocs
subplot (2,2,3);
plot (t,zdd,'r','LineWidth',2);
grid on;
hold on;
plot (t,xdd,'LineWidth',2);
plot (t,ydd,'k','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Acceleration (m/s^2)','FontSize',14,'FontName','time');
legend('Z-axis','X-axis','Y-axis');
% Ddoof thij hinhf dangs quyx ddaoj
figure(2);
plot3 (x,y,z,'LineWidth',2);
grid on;
xlabel('X(m)','FontSize',14,'FontName','time');
ylabel('Y(m)','FontSize',14,'FontName','time');
zlabel('Z(m)','FontSize',14,'FontName','time');
% Ddoof thij cacs gocs quay bieens khopws
figure(3)
plot (t,theta1,'r','LineWidth',2);
grid on;
hold on;
plot (t,theta2,'LineWidth',2);
plot (t,theta3,'k','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Rad','FontSize',14,'FontName','time');
legend('theta1','theta2','theta3');