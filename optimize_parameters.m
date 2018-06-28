function p_optimal = optimize_parameters(p0)
    p_optimal = solve(difference_observed_data, p0)
end

function ydiff = difference_observed_data(p)
   [n, numvars] = size(xobs)
   n = n - 1
   xinit = xobs(1,:)
   xcomp = evolventimesteps(xinit, t0, p)
   ydiff = compute_error(xcomp, xobs)
end