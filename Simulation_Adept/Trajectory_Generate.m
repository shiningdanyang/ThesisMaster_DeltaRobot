clc;
ts = input('Enter start time ts (s): ');
te = input('Enter last time te (s): ');
s0 = input('Enter init position s0: ');
sf = input('Enter final position sf: ');
sd0 = input('Enter init velocity sd0: ');
sdf = input('Enter final velocity sdf: ');
sdd0 = input('Enter init acceleration sdd0: ');
sddf = input('Enter final acceleration sddf: ');
A = [s0;sf;sd0;sdf;sdd0;sddf];
B = [ts^5 ts^4 ts^3 ts^2 ts 1; te^5 te^4 te^3 te^2 te 1; 5*ts^4 4*ts^3 3*ts^2 2*ts 1 0; 5*te^4 4*te^3 3*te^2 2*te 1 0; 20*ts^3 12*ts^2 6*ts 2 0 0; 20*te^3 12*te^2 6*te 2 0 0];
C = inv(B)*A;
%% Vex ddoof thij quyx ddaoj
t = ts:0.01:te; % Thoiwf gian chuyeenr ddoongj
st = 0*t;
for i=1:length(t)
   st(i)= C(1)*t(i)^5+C(2)*t(i)^4+C(3)*t(i)^3+C(4)*t(i)^2+C(5)*t(i)+C(6);
end
plot (t,st);