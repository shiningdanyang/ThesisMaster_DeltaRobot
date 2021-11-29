% Kinematics dimensions of the Hornet 565 Delta Robot
% According to CAD files from Adept.com
% (Length in m)
% Run this m file first before start Forward kinematics model 
%clear all;
clc;
r1 = 225; % Radius of circle crosses three revolute joints of the Base (mm)
r2 = 75;  % Radius of circle crosses three revolute joints of the Moving platform (mm)
r = r1 - r2; % (mm)
l1 = 315;         % Kinematics Length of Active arms (mm)
l2 = 825;         % Kinematics length of Driven arms (mm)
phi1 = pi/2;      % rad
phi2 = 7*pi/6;    % rad
phi3 = 11*pi/6;   % rad
phi = [phi1; phi2; phi3];