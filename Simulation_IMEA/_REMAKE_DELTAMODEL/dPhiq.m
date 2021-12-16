function F = dPhiq(q, x, y, z, dq, dx, dy, dz)
% global R r a b anpha1 anpha2 anpha3 m1 m2 m3 IAy g
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;
% global a R r anpha1 anpha2 anpha3
F = [
    2*a*(cos(q(1))*(R-r)*dq(1)-cos(anpha1)*(cos(q(1))*x*dq(1)+sin(q(1))*dx)-sin(anpha1)*(cos(q(1))*y*dq(1)+sin(q(1))*dy)+sin(q(1))*z*dq(1)-cos(q(1))*dz),0,0,
    0,2*a*(cos(q(2))*(R-r)*dq(2)-cos(anpha2)*(cos(q(2))*x*dq(2)+sin(q(2))*dx)-sin(anpha2)*(cos(q(2))*y*dq(2)+sin(q(2))*dy)+sin(q(2))*z*dq(2)-cos(q(2))*dz),0,
    0,0,2*a*(cos(q(3))*(R-r)*dq(3)-cos(anpha3)*(cos(q(3))*x*dq(3)+sin(q(3))*dx)-sin(anpha3)*(cos(q(3))*y*dq(3)+sin(q(3))*dy)+sin(q(3))*z*dq(3)-cos(q(3))*dz)
];