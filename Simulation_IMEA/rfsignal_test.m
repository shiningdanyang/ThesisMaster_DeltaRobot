function out = rfsignal(t)
L=200;
l=296;
T=5;
ty=1;
d=200;
R=200;
wb=100;
sb=6*wb/sqrt(3);
ub=sqrt(3)*sb/3;
up=50;
sp=up*3/sqrt(3);
wp=sqrt(3)*sp/6;
a=wb-up;
b=sp/2-(sqrt(3)/2)*wb;
c=wp-1/2*wb;

out1=30;out2=30;out3=30;
z0=-200*sind(out1)-sqrt(296^2-(200*cosd(30)+50)^2)
x=0;y=0;z=z0;

%chay theo duong thang y=-20 x=0 z=z0 trong 1s
if t <= 1
    x=0;y=0;z=z0;
    out=zeros(3,1);
    out(1)=30;
    out(2)=30;
    out(3)=30;
elseif t>1 && t <= (ty+1)
    y=-d/ty*(t-1);
    E1=2*L*(y+a);
    F=2*z*L;
    G1=x^2+y^2+z^2+a^2+L^2+2*y*a-l^2;
    E2=-L*(sqrt(3)*(x+b)+y+c);
    G2=x^2+y^2+z^2+b^2+c^2+L^2+2*(x*b+y*c)-l^2;
    E3=L*(sqrt(3)*(x-b)-y-c);
    G3=x^2+y^2+z^2+b^2+c^2+L^2+2*(-x*b+y*c)-l^2;
    t1=(-F-sqrt(E1^2+F^2-G1^2))/(G1-E1);
    out=zeros(3,1);
    out(1)=2*atand(t1)
    t2=(-F-sqrt(E2^2+F^2-G2^2))/(G2-E2);
    out(2)=2*atand(t2)
    t3=(-F-sqrt(E3^2+F^2-G3^2))/(G3-E3);
    out(3)=2*atand(t3)
else
    y=R*sind(360*t/T-234)
    x=R*cosd(360*t/T-234)
    E1=2*L*(y+a);
    F=2*z*L;
    G1=x^2+y^2+z^2+a^2+L^2+2*y*a-l^2;
    E2=-L*(sqrt(3)*(x+b)+y+c);
    G2=x^2+y^2+z^2+b^2+c^2+L^2+2*(x*b+y*c)-l^2;
    E3=L*(sqrt(3)*(x-b)-y-c);
    G3=x^2+y^2+z^2+b^2+c^2+L^2+2*(-x*b+y*c)-l^2;
    t1=(-F-sqrt(E1^2+F^2-G1^2))/(G1-E1);
    out=zeros(3,1);
    out(1)=2*atand(t1)
    t2=(-F-sqrt(E2^2+F^2-G2^2))/(G2-E2);
    out(2)=2*atand(t2)
    t3=(-F-sqrt(E3^2+F^2-G3^2))/(G3-E3);
    out(3)=2*atand(t3)
end
end
