% this is a function that computes n steps of the ode hardcoded in
% evolveonetimestep
function y = evolventimesteps(xinit, t0, n, p)
   % initialize the loop. keep the initial condition xinit in the first row
   y = zeros(n+1, 2) %placeholder for the answer
   zprevious = xinit % keep track of last timestep's value. this will be init cond for next timestep
   y(1,:) = xinit
   for i = 2:(n+1)
      znew = evolveonetimestep(zprevious, t0, p) % compute znew from zprevious going t0 in time
      y(i,:) = znew    %record the result
      zprevious = znew % this value will be init condition for the next pass of the loop 
   end
end
   
