
function T  = FPK(Q)
%param
% Can 5 thong so 
% chieu dai canh tay L, chieu dai khau chap hanh cuoi l, chieu dai canh tam
% giac co dinh sB, chieu dai canh tam giac di dong sP.
% Thong so vi tri can tinh T=[x,y,z]
% Thong so goc quay Q=[q1,q2,q3]
%Chuyen tu do sang radian
% q1=(Q(1)*pi)/180;
% q2=(Q(2)*pi)/180;
% q3=(Q(3)*pi)/180;
q1 = Q(1);
q2 = Q(2);
q3 = Q(3);
%Cac thong so co ban cua delta robot
L=0.2; %Chieu dai canh tay lon
l=0.296; %Chieu dai canh tay nho
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
% Thong so dung trong tinh toan
Wb=((sqrt(3)/6)*Sb);
Wp=(sqrt(3)/6)*Sp;
Ub=(sqrt(3)/3)*Sb;
Up=(sqrt(3)/3)*Sp;
% Dat cac bien a,b,c de dua he phuong trinh dong hoc thuan ve dang
% x^2 + (y+a+l.cos(q1))^2 + (z + l.sin(q1))^2 = l^2
% (X + b - (Sqrt(3)/2).l.cos(q2) )^2 + (Y + C - (1/2).l.cos(q2))^2 + ( Z + L.sin(q2) )^2 = l^2
% (X - b + (Sqrt(3)/2).l.cos(q3) )^2 + (Y + C - (1/2).l.cos(q3))^2 + ( Z + L.sin(q3) )^2 = l^2
%...........................
a=Wb-Up;
b=(Sp/2)-(sqrt(3)/2)*Wb;
c=Wp-Wb/2;
%...........................
% Dua he phuong trinh ve dang giao diem 3 mat cau
% Cac bien Xi,Yi,Zi voi i=1,2,3 la toa do cua tam 3 mat cau
% Cac bien Ri voi i=1,2,3 la ban kinh 3 mat cau
%.............................
X1=0;
Y1=-a-(L*cos(q1));
Z1=-L*sin(q1);
X2=(sqrt(3)/2)*L*cos(q2)-b;
Y2=((1/2)*L*cos(q2)) - c;
Z2= -L*sin(q2);
X3=-(sqrt(3)/2)*L*cos(q3)+b;
Y3=((1/2)*L*cos(q3)) - c;
Z3= -L*sin(q3);
R1=l;
R2=l;
R3=l;
%...........................
% Dua he giao diem 3 mat cau ve dang:
% a11.x + a12.y + a13.z = b1
% a21.x + a22.y + a23.z = b2
%...........................
a11=2*(X3-X1);
a12=2*(Y3-Y1);
a13=2*(Z3-Z1);
a21=2*(X3-X2);
a22=2*(Y3-Y2);
a23=2*(Z3-Z2);
b1=(R1^2)-(R3^2)-(X1^2)-(Y1^2)-(Z1^2)+(X3^2)+(Y3^2)+(Z3^2);
b2=(R2^2)-(R3^2)-(X2^2)-(Y2^2)-(Z2^2)+(X3^2)+(Y3^2)+(Z3^2);
%...........................
%Kiem tra cac diem ki di
if ((a13==0)||(a23==0))
% Giai theo phu luc B
% [A].[B]=[C] voi
% [A] = [m,n; p,q] ; [X]=[x,y] ; [C]= [k, t]
m = 2*(X3-X1);
n = 2*(Y3-Y1);
p = 2*(X3-X2);
q = 2*(Y3-Y2);
k = X3^2 + Y3^2 - X1^2 -Y1^2;
t = X3^2 + Y3^2 - X2^2 -Y2^2;
[A] = [m,n;p,q] ;
[B]=[;]; 
[C]= [k;t];
[B] = [A]\[C];
Zn=Z1;
x1=B(1);
x2=x1;
x=x1;
y1=B(2);
y2=y1;
y=y1;
% Giai phuong trinh bac 2 tim z
z1 = ((2*Zn) + ( sqrt((-2*Zn)^2 - 4*(Zn^2 - R1^2 + (x - X1)^2 + (y-Y1)^2 )) ))/2;
z2 = ((2*Zn) - ( sqrt((-2*Zn)^2 - 4*(Zn^2 - R1^2 + (x - X1)^2 + (y-Y1)^2 )) ))/2;
else
    % Rut x theo y ( x=f(y)= a4.y + a5 )
% Voi
a1=(a11/a13)-(a21/a23);
a2=(a12/a13)-(a22/a23);
a3=(b2/a23)-(b1/a13);
a4= -a2/a1;
a5= -a3/a1;

%........................
% Rut z theo y z = a6.y + a7
% Voi
a6= (-a21*a4-a22)/a23;
a7= (b2-a21*a5)/a23;
%....................
% Dua ve phuong trinh bac 2 theo y: y = a.y^2 + b.y + c
% Voi 
a=(a4^2)+(a6^2)+1;
b=2*a4*(a5-X1)-2*Y1+2*a6*(a7-Z1);
c=a5*(a5-2*X1)+a7*(a7-2*Z1)+X1^2+Y1^2+Z1^2-R1^2;
%.......................
% Tim nghiem y
y1=(-b+(sqrt(b*b-4*a*c)))/(2*a);
y2=(-b-(sqrt(b*b-4*a*c)))/(2*a);
%........................
% Tinh x,z theo y
x1=a4*y1+a5;
x2=a4*y2+a5;
z1=a6*y1+a7;
z2=a6*y2+a7;
%..........................
end
...........................
T1=[x1,y1,z1];
T2=[x2,y2,z2];
% Loai nghiem z duong 
if (z1<=0)
T=T1;    
else
 T=T2;   
end
