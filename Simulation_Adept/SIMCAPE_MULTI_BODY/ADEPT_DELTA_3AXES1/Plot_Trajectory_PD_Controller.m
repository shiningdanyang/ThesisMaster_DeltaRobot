% Ve cac ket qua BDK PD
close all;
% Do thi dap ung goc quay
figure(1)
% Tin hieu dat
plot (tout, yout(:,13),'r','LineWidth',1);
hold on; grid on;
plot (tout, yout(:,14),'b','LineWidth',1);
plot (tout, yout(:,15),'black','LineWidth',1);
% Tin hieu ra
plot (tout, yout(:,1),'r','LineWidth',2);
hold on;
plot (tout, yout(:,2),'b','LineWidth',2);
plot (tout, yout(:,3),'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta (rad)','FontSize',14,'FontName','time');
legend('theta1*','theta2*','theta3*','theta1','theta2','theta3');
% Do thi tin hieu dieu khien
figure (2)
plot (tout, yout(:,7),'r','LineWidth',1);
hold on; grid on;
plot (tout, yout(:,8),'b','LineWidth',1);
plot (tout, yout(:,9),'black','LineWidth',1);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('U(V)','FontSize',14,'FontName','time');
title('Control signal');
legend('U1','U2','U3');
% Do thi sai so dieu khien
figure (3)
plot (tout, yout(:,4),'r','LineWidth',1);
hold on; grid on;
plot (tout, yout(:,5),'b','LineWidth',1);
plot (tout, yout(:,6),'black','LineWidth',1);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('error (rad)','FontSize',14,'FontName','time');
title('ERROR');
legend('e1','e2','e3');