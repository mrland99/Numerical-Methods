%% Solve Ax = b
b = [1 2 3 4 5 6].';
A = [
    12 1 0 0 0 0
    1 18 2 0 0 0
    0 2 4 -5 0 0
    0 0 -5 8 -2 0
    0 0 0 -2 6 2
    0 0 0 0 2 16];
[x, error] = solve_symmetric_tridiagonal(A,b);
fprintf('error = %.16e\n', error);
fprintf("x = \n");
fprintf('%.16e\n', x);
fprintf("MATLAB solve = \n");
fprintf('%.16e\n', A\b);