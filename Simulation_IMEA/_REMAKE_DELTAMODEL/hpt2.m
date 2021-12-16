function F = hpt2(q, x, y, z)
global R r a b anpha1 anpha2 anpha3
F = [ 
    b*b-(cos(anpha1)*(R-r)+a*cos(anpha1)*cos(q(1))-x)^2-(sin(anpha1)*(R-r)+a*sin(anpha1)*cos(q(1))-y)^2-(a*sin(q(1))+z)^2,
    b*b-(cos(anpha2)*(R-r)+a*cos(anpha2)*cos(q(2))-x)^2-(sin(anpha2)*(R-r)+a*sin(anpha2)*cos(q(2))-y)^2-(a*sin(q(2))+z)^2,
    b*b-(cos(anpha3)*(R-r)+a*cos(anpha3)*cos(q(3))-x)^2-(sin(anpha3)*(R-r)+a*sin(anpha3)*cos(q(3))-y)^2-(a*sin(q(3))+z)^2
];
%a = l1 (trong taif lieeuj)
%b = l2 (trong taif lieeuj)