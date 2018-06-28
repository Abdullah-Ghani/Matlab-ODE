function y = myode(t, x, p)
  y = zeros(2,1)
  y(1) = p(1)*x(2) - p(2)*x(1)
  y(2) = p(3)/(1 + p(4)*x(1)) - p(5)*x(2)
end

% this is the file defining the ODE system. In this case 2x2, with 5
% parameters in vector p. 