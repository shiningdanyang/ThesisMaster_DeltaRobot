function F = Phis(q, x, y, z)
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;

q1 = q(1);
q2 = q(2);
q3 = q(3);
F = [
    2*a*(sin(q1)*(R-r)-cos(anpha1)*sin(q1)*x-sin(anpha1)*sin(q1)*y-cos(q1)*z), 0,                                                                         0;
    0,                                                                         2*a*(sin(q2)*(R-r)-cos(anpha2)*sin(q2)*x-sin(anpha2)*sin(q2)*y-cos(q2)*z), 0;
    0,                                                                         0,                                                                         2*a*(sin(q3)*(R-r)-cos(anpha3)*sin(q3)*x-sin(anpha3)*sin(q3)*y-cos(q3)*z);
    2*(cos(anpha1)*(R-r)+a*cos(anpha1)*cos(q1)-x),                             2*(cos(anpha2)*(R-r)+a*cos(anpha2)*cos(q2)-x),                             2*(cos(anpha3)*(R-r)+a*cos(anpha3)*cos(q3)-x);
    2*(sin(anpha1)*(R-r)+a*sin(anpha1)*cos(q1)-y),                             2*(sin(anpha2)*(R-r)+a*sin(anpha2)*cos(q2)-y),                             2*(sin(anpha3)*(R-r)+a*sin(anpha3)*cos(q3)-y);
    2*(z+a*sin(q1)),                                                           2*(z+a*sin(q2)),                                                           2*(z+a*sin(q3))
    ]';