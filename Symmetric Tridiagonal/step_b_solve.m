%% See intermediate_step_solver for description
function [z] = step_b_solve(D, y)
    [m,n] = size(D);
    z = zeros(m, 1);
    for i = 1:n
       z(i,1) = y(i,1)/D(i,i); 
    end
end