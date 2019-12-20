%% Full solve symmetric diagonal matrix
% Input: Symmetric Tridiagonal matrix A, Target vector b
% Return: Solution vector x, Numerical Error error
function [x, error] = solve_symmetric_tridiagonal(A, b)
    [l,d] = symmetric_tridiagonal_LU(A);
    display(l);
    display(d);
    display(l*d*l.');
    y = step_a_solve(l,b); % Solve Ly = b
    z = step_b_solve(d,y); % Solve Dz = y
    x = step_c_solve(l.',z); % Solve L^Tx = z
    error = norm(A - l*d*l.');
end