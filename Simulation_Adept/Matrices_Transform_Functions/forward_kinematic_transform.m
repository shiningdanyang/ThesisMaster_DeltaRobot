clear all;
clc;
syms r1 r2 l1 l2 phi theta anfa beta x y z
% ma traanj chuyeenr heej O veef heej A
RotZphi = RotZ(phi);
TranXr1 = TransX (r1);
RotX90 = RotX(-pi/2);
RotZtheta = RotZ(-theta);
T = [cos(phi) 0 -sin(phi) r1*cos(phi); sin(phi) 0 cos(phi) r1*sin(phi); 0 -1 0 0; 0 0 0 1];
T1 = RotZphi*TranXr1*RotX90*RotZtheta;
TOA = T*RotZtheta;
% ma traanj chuyeenr heej A veef heej B
Txl1 = TransX(l1);
RotZanfa = RotZ(-anfa);
Rotybeta = RotY(beta);
TAB = Txl1*RotZanfa*Rotybeta;
% ma traajn chuyeenr heej O veef heej B
TOB = TOA*TAB;
% Toaj ddooj ddieemr C trong heej B
rcb = [l2; 0; 0;1];
% Toaj ddooj ddieemr C trong heej toongr theer
rc = TOB*rcb;
% Toaj ddooj ddieemr C trong heej tuyen ddooi neeus tinhs qua ddieemr tacs ddoongj cuoois
rcp = [x;y;z]+[r2*cos(phi); r2*sin(phi); 0]