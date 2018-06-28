syms y(t);
ode = diff(y,t) == t*y;
cond = y(0) == 2;
ySol(t) = dsolve(ode,cond);
disp(ySol);