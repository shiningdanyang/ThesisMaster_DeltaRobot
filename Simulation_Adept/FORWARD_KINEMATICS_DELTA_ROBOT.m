% Program for Forward kinematics problem of Delta Robot
close all;
clc;
syms x y z;
% input data
r1 = 225;   % m : length of vectors OAi (i = 1,2,3)
r2 = 75;  % m : length of vectors OCi (i = 1,2,3)
r = r1- r2;
l1 = 315;  % m : length of active links AiBi 
l2 = 825;   % m : length of driven links BiCi
phi1 = pi/2; phi2 =  pi/2 + 2*pi/3; phi3 = phi2 + 2*pi/3;
theta1 = input('Input theta1: ') % value of three angles of active links
theta2 = input('Input theta2: ')
theta3 = input('Input theta3: ')
% Simplified expressions:
A1 = r*cos(phi1)+l1*cos(phi1)*cos(theta1);
A2 = r*cos(phi2)+l1*cos(phi2)*cos(theta2);
A3 = r*cos(phi3)+l1*cos(phi3)*cos(theta3);
B1 = r*sin(phi1)+l1*cos(theta1)*sin(phi1);
B2 = r*sin(phi2)+l1*cos(theta2)*sin(phi2);
B3 = r*sin(phi3)+l1*cos(theta3)*sin(phi3);
C1 = l1*sin(theta1);
C2 = l1*sin(theta2);
C3 = l1*sin(theta3);
%Simplify in matrices
ai = [A1 A2 A3]; bi = [B1 B2 B3]; ci = [C1 C2 C3];
% Set of Constrain Equations (for forward kinematics analysis)
eqn1 = (x-A1)^2 + (y-B1)^2 + (z-C1)^2 == l2^2;
eqn2 = (x-A2)^2 + (y-B2)^2 + (z-C2)^2 == l2^2;
eqn3 = (x-A3)^2 + (y-B3)^2 + (z-C3)^2 == l2^2;
solp = solve ([eqn1, eqn2, eqn3],[x, y, z]);
zp = eval(solp.z);
xp = eval(solp.x);
yp = eval(solp.y);
if zp(1) > zp(2) % Check geometry condition to get possible result.
        zo = zp(1);
        if xp(1)< 0.001 
            xp(1)= 0; xo = xp(1); end
        if yp(1)< 0.001 
            yp(1)= 0; yo = yp(1); end
else 
    zo = zp(2);
    if xp(2)< 0.001 
            xp(2)= 0; xo = xp(2); end
    if yp(2)< 0.001 
            yp(2)= 0; yo = yp(2);end
    
end 
fprintf('Xo = %g(m) \n',xo);
fprintf('Yo = %g(m) \n',yo);
fprintf('Zo = %g(m) \n',zo);
