close all

set(groot,'defaultAxesXGrid','on')
set(groot,'defaultAxesYGrid','on')

figure
set(gcf,'Name','Toaj ddooj khaau chaaps hanhf cuoois');
plot(out.smc_posref);
hold on
plot(out.smc_pos);
legend('xref','yref','zref','x','y','z');

figure
set(gcf,'Name','Toaj ddooj khopws q1');
plot(out.smc_q1ref);
hold on
plot(out.smc_q1);
legend('q1ref', 'q1');

figure
set(gcf,'Name','Toaj ddooj khopws q2');
plot(out.smc_q2ref);
hold on
plot(out.smc_q2);
legend('q2ref', 'q2');

figure
set(gcf,'Name','Toaj ddooj khopws q3');
plot(out.smc_q3ref);
hold on
plot(out.smc_q3);
legend('q3ref', 'q3');

figure
set(gcf,'Name','Toaj ddooj khopws q3');
plot(out.smc_q3ref);
hold on
plot(out.smc_q3);
legend('q3ref', 'q3');

figure
set(gcf,'Name','Tins hieeuj ddieeuf khieenr q1');
plot(out.u1);

figure
set(gcf,'Name','Tins hieeuj ddieeuf khieenr q2');
plot(out.u2);

figure
set(gcf,'Name','Tins hieeuj ddieeuf khieenr q3');
plot(out.u3);