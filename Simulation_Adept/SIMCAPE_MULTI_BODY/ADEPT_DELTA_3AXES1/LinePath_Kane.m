function [x, y, z] = LinePath_Kane(xo, yo, zo, xf, yf, zf, to, tf) 
t = to:0.01:tf;
if (xo == xf )&& (yo==yf) % neeus dduongwf thangwr song song voiws trucj Oz
    z = zo + (zf-zo)*(t-to)/(tf-to)-((zf-zo)/(2*pi))*sin(2*pi*(t-to)/(tf-to));
    x = 0*t; 
    y = 0*t;
    for i=1:length(t)
       x(i) = xf;
       y(i) = yf;
    end
else
if (xo == xf )&& (zo==zf) % neeus dduongwf thangwr song song voiws trucj Oy
    y = yo + (yf-yo)*(t-to)/(tf-to)-((yf-yo)/(2*pi))*sin(2*pi*(t-to)/(tf-to));
    x = 0*t; 
    z = 0*t;
    for i=1:length(t)
       x(i) = xf;
       z(i) = zf;
    end
else
if (yo == yf )&& (zo==zf) % neeus dduongwf thangwr song song voiws trucj Ox
    x = xo + (xf-xo)*(t-to)/(tf-to)-((xf-xo)/(2*pi))*sin(2*pi*(t-to)/(tf-to));
    z = 0*t; 
    y = 0*t;
    for i=1:length(t)
       z(i) = zf;
       y(i) = yf;
    end
else
x = xo + (xf-xo)*(t-to)/(tf-to)-((xf-xo)/(2*pi))*sin(2*pi*(t-to)/(tf-to));
% Tinhs cacs heej soos lieen heej tuyeens tinhs giuawx toaj ddooj y, z theo x
% yo = a1*xo + b1;
% yf = a1*xf + b1;
% zo = a2*xo + b2;
% zf = a2*xf + b2;
A1 = [xo 1; xf 1];
B1 = [yo;yf];
K1 = inv(A1)*B1;
B2 = [zo;zf];
K2 = inv(A1)*B2;
y = K1(1)*x+K1(2);
z = K2(1)*x+K2(2);
end
end
end
end