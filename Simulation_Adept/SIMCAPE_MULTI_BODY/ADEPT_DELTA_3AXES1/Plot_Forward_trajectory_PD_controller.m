% Khai bao thong so dong co
theta = load('Trajectory_PD_Controller.mat');
theta = theta.ans;
theta = theta';
r1 = 0.225; % Radius of circle crosses three revolute joints of the Base (mm)
r2 = 0.075;  % Radius of circle crosses three revolute joints of the Moving platform (mm)
r = r1 - r2; % (mm)
l1 = 0.315;         % Kinematics Length of Active arms (mm)
l2 = 0.825;         % Kinematics length of Driven arms (mm)
phi1 = pi/2;      % rad
phi2 = 7*pi/6;    % rad
phi3 = 11*pi/6;   % rad
phi = [phi1; phi2; phi3];
t = 0*theta(:,1);
for i = 1: length(t)
    X1 = cos(phi1)*(r + l1*cos(theta(:,2)));
    Y1 = sin(phi1)*(r + l1*cos(theta(:,2)));
    Z1 = l1*sin(theta(:,2));
end
for i = 1: length(t)
    X2 = cos(phi2)*(r + l1*cos(theta(:,3)));
    Y2 = sin(phi3)*(r + l1*cos(theta(:,3)));
    Z2 = l1*sin(theta(:,3));
end
for i = 1: length(t)
    X3 = cos(phi3)*(r + l1*cos(theta(:,4)));
    Y3 = sin(phi3)*(r + l1*cos(theta(:,4)));
    Z3 = l1*sin(theta(:,4));
end
xyz = zeros(length(t),3);
for i = 1: length(t)
   xyz(i,:) = forward(X1(i),X2(i),X3(1),Y1(i),Y2(i),Y3(i),Z1(i),Z2(i),Z3(i)); 
end
