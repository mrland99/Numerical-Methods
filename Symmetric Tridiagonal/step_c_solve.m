%% See intermediate_step_solver for description
function [x] = step_c_solve(T, z)
    [m,n] = size(T);
    x = zeros(m, 1);
    x(m,1) = z(m,1);
    for k = n:-1:2
        x(k-1,1) = z(k-1,1) - T(k-1, k)*x(k,1);
    end
end