%% IPK: Ham tinh dong hoc nguoc robot delta.
%% Dau vao la vector vi tri [x,y,z], dau ra la vi tri
%% goc quay [q1,q2,q3]
function Q  = IPK(x,y,z)

 %% Khai bao cac hang so su dung
 Pi = 3.141;
 esilon = 10e-8;

 %% Khai bao thong so cua robot
Sb = 0.2*sqrt(3); Sp = 0.05*sqrt(3);
R=Sb/(2*sqrt(3)); r = Sp/(sqrt(3));
a=0.2; b=0.296; 
anpha1=-pi/2; anpha2=pi/6; anpha3=5*pi/6;
m1=0.42; m2=0.2; m3=0.75; IAy=m1*a*a/3; g=9.81;
L=a;
l=b;
 h = 0.131; %% chieu rong canh tay hinh binh hanh
 Ub = (sqrt(3) / 3) * Sb;
 Up = (sqrt(3) / 3) * Sp;
 Wb = (sqrt(3) / 6) * Sb;
 Wp = (sqrt(3) / 6) * Sp;

 %% Khai bao cac he so trong tinh toan
 a = (-(Up)+Wb);
 b = ((Sp / 2) - ((sqrt(3)) / 2)* Wb);
 c = (Wp - (Wb / 2));

 %% Ma tran chua thong so cua phuong trinh dong hoc nguoc
 E = zeros(1,3);
 F = zeros(1,3);
 G = zeros(1,3);
 Q = zeros(1,3);
 %% Phuong trinh dong hoc nguoc duoc dua ve dang
 %% Fi.Sin(Qi) + Ei.cos(Qi) + Gi = 0 voi:
 E(1) = (2 * L * (y + a));
 E(2) = (-L * (sqrt(3) * ((x + b)) + y + c));
 E(3) = (L * (sqrt(3) * ((x - b)) - y - c));
 F(1) = (2 * z * L);
 F(2) = 2 * z * L;
 F(3) = 2 * z * L;
 G(1) = x * x + y * y + z * z + a * a + L * L + 2 * y * a - l * l;
 G(2) = x * x + y * y + z * z + b * b + c * c + L * L + 2 * (x * b + y * c) - l * l;
 G(3) = x * x + y * y + z * z + b * b + c * c + L * L + 2 * (-(x * b) + y * c) - l * l;

 %% Kiem tra cac toa do vo nghiem.
 for i = 1:3
    if (( E(i)^2 + F(i)^2 - G(i)^2 ) < 0)

%          fprintf('Khong tim duoc nghiem dong co thu %d \n',i);
        disp('Khoong timf dduocwj nghieemj ddoongj cow thws');
        disp(i);
    else
        t1 = ( -F(i) + sqrt( E(i)^2 + F(i)^2 - G(i)^2 ))/( G(i) - E(i));
        t2 = ( -F(i) - sqrt( E(i)^2 + F(i)^2 - G(i)^2 ))/( G(i) - E(i));
        q11 = 2*atan(t1);
        q12 = 2*atan(t2);
        if abs(q11)>abs(q12)
%             Q(i) = (q12*180)/pi;
            Q(i) = q12;
        else
%             Q(i) = (q11*180)/pi;
            Q(i) = q11;
        end
     end
end

