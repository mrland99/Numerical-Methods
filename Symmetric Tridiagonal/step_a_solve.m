%% See intermediate_step_solver for description
function [y] = step_a_solve(L, b)
    [m,n] = size(L);
    y = zeros(m, 1);
    y(1,1) = b(1,1);
    for i = 1: (n-1)
        y(i+1,1) = b(i+1,1) - y(i,1)*L(i+1, i);
    end
end