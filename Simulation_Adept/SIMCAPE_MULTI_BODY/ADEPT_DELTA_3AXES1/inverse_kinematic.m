%Hamf giair baif toans ddoongj hocj nguocwj
%phuongw trinhf ddoongj hocj nguocwj : a*cos(theta)+b*sin(theta) = c
function theta = inverse_kinematic(x,y,z,i)
r1 = 0.225; % Radius of circle crosses three revolute joints of the Base
r2 = 0.075;  % Radius of circle crosses three revolute joints of the Moving platform
r = r2 - r1;
l1 = 0.315;         % Kinematics Length of Active arms
l2 = 0.825;         % Kinematics length of Driven arms
phi1 = pi/2;
phi2 = 7*pi/6;
phi3 = 11*pi/6;
phi = [phi1; phi2; phi3];
%--------------------------------------------------------------------------
    a = 2*l1*(r+x*cos(phi(i))+y*sin(phi(i)));
    b = 2*z*l1;
    c = x^2 + y^2 + z^2 + r^2 +l1^2-l2^2+2*r*(y*sin(phi(i))+x*cos(phi(i)));
    anfa = asin(a/(sqrt(a^2+b^2)));
    theta = asin(c/(sqrt(a^2+b^2)))- anfa;
end