function F = Gs(q)
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;

F = [
    -a*g*(0.5*m1+m2)*cos(q(1));
    -a*g*(0.5*m1+m2)*cos(q(2));
    -a*g*(0.5*m1+m2)*cos(q(3));
    0;
    0;
    (m3+3*m2)*g
    ];