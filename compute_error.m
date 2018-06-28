function compute_error(xcomp, xobs)
   sum(sum((xcomp - xobs).*(xcomp - xobs))) %this is sum of squared differences
end