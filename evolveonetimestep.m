function y = evolveonetimestep(xinit, t0, p)
  [ts, ys] = ode45(@(t, x) myode(t, x, p), [0,t0], xinit)
  y = ys(end,:)
end

  