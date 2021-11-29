function m = solequa(a1, a2, a3, b1, b2, b3, c1, c2, c3)
syms x y z
m = zeros(3,1);
eqn1 = (x-a1)^2 + (y-b1)^2 + (z-c1)^2 == 0.825^2;
eqn2 = (x-a2)^2 + (y-b2)^2 + (z-c2)^2 == 0.825^2;
eqn3 = (x-a3)^2 + (y-b3)^2 + (z-c3)^2 == 0.825^2;
solp = solve ([eqn1, eqn2, eqn3],[x, y, z]);
zp = eval(solp.z);
xp = eval(solp.x);
yp = eval(solp.y);
if zp(1) > zp(2) % Check geometry condition to get possible result.
        m(3) = round(zp(1),3);
        m(1) = round(xp(1),3);
        m(2) = round(yp(1),3);
        return
else 
    m(3) = round(zp(2),3);
    m(1) = round(xp(2),3);
    m(2) = round(yp(2),3);
        return
end 