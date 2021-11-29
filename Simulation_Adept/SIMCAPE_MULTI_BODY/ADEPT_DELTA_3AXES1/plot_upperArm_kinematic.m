subplot (2,2,1); % DDo thij gocs quay khaau chur doongj
plot (tout,yout(:,1),'r','LineWidth',2);
grid on;
hold on
plot (tout,yout(:,2),'b','LineWidth',2);
plot (tout,yout(:,3),'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta (rad)','FontSize',14,'FontName','time');
legend('theta1','theta2','theta3');
% DDoof thij vaanj toocs gocs khaau chur ddoongj
subplot (2,2,2); 
plot (tout,yout(:,4),'r','LineWidth',2);
grid on;
hold on
plot (tout,yout(:,5),'b','LineWidth',2);
plot (tout,yout(:,6),'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta_d (rad/s)','FontSize',14,'FontName','time');
legend('theta1_d','theta2_d','theta3_d');
% DDoof thij gia toocs gocs khaau chur ddoongj
subplot (2,2,3); 
plot (tout,yout(:,7),'r','LineWidth',2);
grid on;
hold on
plot (tout,yout(:,8),'b','LineWidth',2);
plot (tout,yout(:,9),'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Theta_dd (rad/s^2)','FontSize',14,'FontName','time');
legend('theta1_dd','theta2_dd','theta3_dd');