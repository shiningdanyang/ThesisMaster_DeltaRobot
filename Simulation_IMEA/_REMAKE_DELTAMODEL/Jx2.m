function F = Jx2(q, x, y, z)
% global R r a b anpha1 anpha2 anpha3 m1 m2 m3 IAy g
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;
% global a R r anpha1 anpha2 anpha3
F = [
    2*(cos(anpha1)*(R-r)+a*cos(anpha1)*cos(q(1))-x),2*(sin(anpha1)*(R-r)+a*sin(anpha1)*cos(q(1))-y),-2*(a*sin(q(1))+z);
    2*(cos(anpha2)*(R-r)+a*cos(anpha2)*cos(q(2))-x),2*(sin(anpha2)*(R-r)+a*sin(anpha2)*cos(q(2))-y),-2*(a*sin(q(2))+z);
    2*(cos(anpha3)*(R-r)+a*cos(anpha3)*cos(q(3))-x),2*(sin(anpha3)*(R-r)+a*sin(anpha3)*cos(q(3))-y),-2*(a*sin(q(3))+z)
];