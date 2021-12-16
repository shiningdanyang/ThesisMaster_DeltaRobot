function F = Ms()
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;

F = [
    IAy+m2*a^2,          0,          0,       0,          0,          0;
             0, IAy+m2*a^2,          0,       0,          0,          0;
             0,          0, IAy+m2*a^2,       0,          0,          0;
             0,          0,          0, m3+3*m2,          0,          0;
             0,          0,          0,       0,    m3+3*m2,          0;
             0,          0,          0,       0,          0,    m3+3*m2
    ];
%IAy = I1y (trong taif lieeuj)
%m2 = mb (trong taif lieeuj)
%m3 = mP (trong taif lieeuj)