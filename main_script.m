x0 = [1,0]
n = 3 %number of time points minus 1 (the initial time point 0)
t0 = 0.1 %length of a single timestep
p0 = ones(5,1) %initial guess at the parameters of the myode system of ODEs
%xobs = rand(n+1,2) %observed data
xobs = evolventimesteps(x0, t0, n, p0)

pnew = optimize_parameters(p0)

%[ts, xs] = ode45(@(t, x) myode(t, x, p), [0,1], x0)

%plot(ts, xs)