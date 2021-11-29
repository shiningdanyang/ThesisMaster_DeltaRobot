% Do thi cac toa do theo thoi gian
figure (1)
plot (tout, yout(:,1),'LineWidth',2);
hold on;
grid on;
plot (tout, yout(:,2),'k','LineWidth',2);
plot (tout, yout(:,3),'r','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('X, Y, Z (mm)','FontSize',14,'FontName','time');
legend('X-axis','Y-axis','Z-axis');
% Do thi duong chuyen dong cua ban may dong
figure (2)
plot3 (yout(:,1),yout(:,2),yout(:,3),'LineWidth',2);
grid on;
xlabel('X(mm)','FontSize',14,'FontName','time');
ylabel('Y(mm)','FontSize',14,'FontName','time');
zlabel('Z(mm)','FontSize',14,'FontName','time');
% Do thi chuyen dong cua bien khop chu dong
figure (3)
plot (tout, yout(:,4),'LineWidth',2);
hold on;
grid on;
plot (tout, yout(:,5),'k','LineWidth',2);
plot (tout, yout(:,6),'r','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('X, Y, Z (mm)','FontSize',14,'FontName','time');
legend('Theta1','Theta2','Theta3');