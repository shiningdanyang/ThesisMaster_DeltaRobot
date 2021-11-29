% DDoo thij moment khaau chur ddoongj
plot (tout,yout(:,1),'r','LineWidth',2);
grid on;
hold on
plot (tout,yout(:,2),'b','LineWidth',2);
plot (tout,yout(:,3),'black','LineWidth',2);
xlabel('Time (s)','FontSize',14,'FontName','time');
ylabel('Moment (Nm)','FontSize',14,'FontName','time');
legend('tau1','tau2','tau3');