function F = dJq2(q, x, y, z, dq, dx, dy, dz)
% global R r a b anpha1 anpha2 anpha3 m1 m2 m3 IAy g
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;
% global R r a anpha1 anpha2 anpha3
F = [
    2*a*cos(anpha1)*(cos(anpha1)*(R-r)+a*cos(anpha1)*cos(q(1))-x)*cos(q(1))*dq(1)+2*a*cos(anpha1)*sin(q(1))*(-a*cos(anpha1)*sin(q(1))*dq(1)-dx)+2*a*sin(anpha1)*((sin(anpha1)*(R-r)+a*sin(anpha1)*cos(q(1))-y)*cos(q(1))*dq(1)+sin(q(1))*(-a*sin(anpha1)*sin(q(1))*dq(1)-dy))+2*a*(a*sin(q(1))+z)*sin(q(1))*dq(1)-2*a*cos(q(1))*(a*cos(q(1))*dq(1)+dz),0,0,
    0,2*a*cos(anpha2)*(cos(anpha2)*(R-r)+a*cos(anpha2)*cos(q(2))-x)*cos(q(2))*dq(2)+2*a*cos(anpha2)*sin(q(2))*(-a*cos(anpha2)*sin(q(2))*dq(2)-dx)+2*a*sin(anpha2)*((sin(anpha2)*(R-r)+a*sin(anpha2)*cos(q(2))-y)*cos(q(2))*dq(2)+sin(q(2))*(-a*sin(anpha2)*sin(q(2))*dq(2)-dy))+2*a*(a*sin(q(2))+z)*sin(q(2))*dq(2)-2*a*cos(q(2))*(a*cos(q(2))*dq(2)+dz),0,
    0,0,2*a*cos(anpha3)*(cos(anpha3)*(R-r)+a*cos(anpha3)*cos(q(3))-x)*cos(q(3))*dq(3)+2*a*cos(anpha3)*sin(q(3))*(-a*cos(anpha3)*sin(q(3))*dq(3)-dx)+2*a*sin(anpha3)*((sin(anpha3)*(R-r)+a*sin(anpha3)*cos(q(3))-y)*cos(q(3))*dq(3)+sin(q(3))*(-a*sin(anpha3)*sin(q(3))*dq(3)-dy))+2*a*(a*sin(q(3))+z)*sin(q(3))*dq(3)-2*a*cos(q(3))*(a*cos(q(3))*dq(3)+dz)
];