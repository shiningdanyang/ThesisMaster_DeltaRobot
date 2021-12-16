close all; clear; clc;
q0 = [-0.23 0.8 0.8 ];
epsilon=10^-9;
delta_t=0.01;
tf=1;
N=0:200;
global R r a b anpha1 anpha2 anpha3 m1 m2 m3 IAy g Sb Sp
% R=0.266; r=0.04; 
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;
L=a; l=b;
tg = zeros(1,length(N));  %added by Yang
q = zeros(length(N), 3);
q_trigonometric  = zeros(length(N),3);
tstart=tic;
x = zeros(1,length(N));   %added by Yang
y = zeros(1,length(N));   %added by Yang
z = zeros(1,length(N));   %added by Yang
dx = zeros(1,length(N));   %added by Yang
dy = zeros(1,length(N));   %added by Yang
dz = zeros(1,length(N));   %added by Yang
dx_ = zeros(1,length(N));   %added by Yang
dy_ = zeros(1,length(N));   %added by Yang
dz_ = zeros(1,length(N));   %added by Yang
ddx = zeros(1,length(N));   %added by Yang
ddy = zeros(1,length(N));   %added by Yang
ddz = zeros(1,length(N));   %added by Yang
mm = zeros(length(N),3);
pos = zeros(3,length(N)); %added by Yang
vel = zeros(3,length(N));    %added by Yang
acl = zeros(3,length(N));    %added by Yang
delta_q = zeros(length(N),3);   %added by Yang
e2 = zeros(length(N),3);   %added by Yang
dqT = zeros(3,length(N));   %added by Yang
dq = zeros(length(N),3);   %added by Yang
ddqT = zeros(3,length(N));   %added by Yang
ddq = zeros(length(N),3);   %added by Yang
loopStep = zeros(length(N)); %added by Yang
for i=1:length(N)
    t=0.01*(i-1);
    tg(i)=t;
    if i==1
        q(i,:)=q0;
    else
        q(i,:)=q(i-1,:)+dq(i-1,:)*delta_t+1/2*ddq(i-1,:)*(delta_t)^2;
    end
    
    % Vector vij tris cuar P
    x(i)=0.2*cos((2*pi/tf)*t);
    y(i)=0.2*sin((2*pi/tf)*t);
    z(i)=-0.3;
    pos(:,i)=[x(i);y(i);z(i)];
    % Vector vaan toocs cuar P
    dx(i)=-(0.2*pi/tf)*sin((2*pi/tf)*t);
    dy(i)=(0.2*pi/tf)*cos((2*pi/tf)*t);
    dz(i)=0;
    vel(:,i)=[dx(i);dy(i);dz(i)];
    % Vector gia toocs
    ddx(i)=-(1.2*pi*pi/(tf*tf))*cos((2*pi/tf)*t);
    ddy(i)=(-1.2*pi*pi/(tf*tf))*sin((2*pi/tf)*t);
    ddz(i)=0;
    acl(:,i)=[ddx(i);ddy(i);ddz(i)];
    % Giair baif toans ddoongj hocj nguocwj pp Newton-Raphson
    delta_q(i,:)=[1,1,1];
    Max=0;
    loopStep(i)=0;
    while(((sqrt(delta_q(i,1)*delta_q(i,1)')>=epsilon)||(sqrt(delta_q(i,2)*delta_q(i,2)')>=epsilon)||(sqrt(delta_q(i,3)*delta_q(i,3)')>=epsilon))&&(Max<20))
        delta_q(i,:)=-inv(Jq2(q(i,:),x(i),y(i),z(i)))*hpt2(q(i,:),x(i),y(i),z(i));
        q(i,:)=q(i,:)+delta_q(i,:);
        loopStep(i)=loopStep(i)+1;
        Max=Max+1;
    end
    % Giair baif toans ddoongj hocj nguocwj pp luongwj giacs
    q_trigonometric(i,:) = IPK(x(i), y(i), z(i));
    % Bieeur dieenx sai soos BE
    e2(i,:)=hpt2(q(i,:),x(i),y(i),z(i));
    % Tinhs vaanj toocs cacs bieens khopws
    dqT(:,i)=-inv(Jq2(q(i,:),x(i),y(i),z(i)))*Jx2(q(i,:),x(i),y(i),z(i))*vel(:,i);
    dq(i,:)=dqT(:,i);
    % Tinhs gia toocs cacs bieen khopws
    ddqT(:,i)=-inv(Jq2(q(i,:),x(i),y(i),z(i)))*(dJq2(q(i,:),x(i),y(i),z(i),dq(i,:),dx(i),dy(i),dz(i))*dqT(:,i)+Jx2(q(i,:),x(i),y(i),z(i))*acl(:,i)+dJx2(q(i,:),x(i),y(i),z(i),dq(i,:),dx(i),dy(i),dz(i))*vel(:,i));
    ddq(i,:)=ddqT(:,i);
    invPz=inv(Phiz2(q(i,:),x(i),y(i),z(i)));
    Pa=Phia2(q(i,:),x(i),y(i),z(i));
    Q=[eye(3,3);-invPz*Pa];
%     T=Q'*(Phis(q(i,:),x(i),y(i),x(i))');
    %mm(i,:)=(Q'*(Ms2()*dds(:,i)+Gs2(q(i,:))))';
end
% disp(tg');
disp(q);
disp("end");
% kq = [tg',q(:,1),q(:,2),q(:,3),x(:),y(:),z(:),dq(:,1),dq(:,2),dq(:,3),dx(:),dy(:),dz(:),ddq(:,1),ddq(:,2),ddq(:,3),ddx(:),ddy(:),ddz(:)]';
% save file_DHN.matkq;
s = [q(:,1),q(:,2),q(:,3),x(:),y(:),z(:)]';
ds = [dq(:,1),dq(:,2),dq(:,3),dx(:),dy(:),dz(:)]';
dds = [ddq(:,1),ddq(:,2),ddq(:,3),ddx(:),ddy(:),ddz(:)]';
% Tinhs toans ddoongj lucwj hocj nguocwj
for i=1:length(N)
    t=0.01*(i-1);
    tg(i)=t;
    % Tinhs toans ddoongj lucw hocj
    invPz=inv(Phiz2(q(i,:),x(i),y(i),z(i)));
    Pa=Phia2(q(i,:),x(i),y(i),z(i));
    E=eye(3,3);
    Q=[eye(3,3);-invPz*Pa]; % Q <=> R(trong taif lieeuj)

    mm(i,:)=(Q'*(Ms()*dds(:,i)+Gs(q(i,:))))';
end

theta = q;
pos = [x,y,z];
dtheta = dq;
dpos = [dx,dy,dz];
torque = mm;

dM=max(mm(:,1))-min(mm(:,1));

figure;
plot(tg,mm(:,1),'b','linewidth',2)
hold on
plot(tg,mm(:,2),'r--','LineWidth',2)
hold on
plot(tg,mm(:,3),'k-.','LineWidth',2)
box off
title('Moment daanx ddoongj')
xlabel('t[s])')
ylabel('[Nm]')  
grid
legend('t_1','t_2','t_3');

figure;
plot(tg,q(:,1),'b','linewidth',2)
hold on
plot(tg,q(:,2),'r--','LineWidth',2)
hold on
plot(tg,q(:,3),'k-.','LineWidth',2)
box off
title('Gocs chur ddoongj pp Newton')
xlabel('t[s])')
ylabel('rad')
grid
legend('q1','q2','q3');

figure;
plot(tg,x(:),'b','linewidth',2)
hold on
plot(tg,y(:),'r--','LineWidth',2)
hold on
plot(tg,z(:),'k-.','LineWidth',2)
box off
title('Toaj ddooj thao tacs')
xlabel('t[s])')
ylabel('rad')
grid
legend('x','y','z');

figure;
plot(tg,q_trigonometric(:,1),'b','linewidth',2)
hold on
plot(tg,q_trigonometric(:,2),'r--','LineWidth',2)
hold on
plot(tg,q_trigonometric(:,3),'k-.','LineWidth',2)
box off
title('Gocs chur ddoongj pp luongwj giacs')
xlabel('t[s])')
ylabel('rad')
grid
legend('q1','q2','q3');


T = zeros(length(N),3);
for i=1:1:length(N)
    T(i,:) = FPK(q_trigonometric(i,:));
end
figure;
plot(tg,T(:,1),'b','linewidth',2)
hold on
plot(tg,T(:,2),'r--','LineWidth',2)
hold on
plot(tg,T(:,3),'k-.','LineWidth',2)
box off
title('Toaj ddooj thao tacs FPK')
xlabel('t[s])')
ylabel('rad')
grid
legend('q1','q2','q3');
