function F = R(q, x, y, z)
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;

q1 = q(1);
q2 = q(2);
q3 = q(3);

F = [
    eye(3);
    -inv(Phiz(q, x, y, z))*Phiq(q, x, y, z)
    ];