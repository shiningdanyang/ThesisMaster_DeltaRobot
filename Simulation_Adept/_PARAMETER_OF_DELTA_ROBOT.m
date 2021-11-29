r1 = 0.225; % Radius of circle crosses three revolute joints of the Base
r2 = 0.075;  % Radius of circle crosses three revolute joints of the Moving platform
r = r2 - r1;
l1 = 0.315;         % Kinematics Length of Active arms
l2 = 0.825;         % Kinematics length of Driven arms
phi1 = pi/2;
phi2 = 7*pi/6;
phi3 = 11*pi/6;
phi = [phi1; phi2; phi3];
g=9.8;
mo = 0.504; m1=1.954;m2=0.475;