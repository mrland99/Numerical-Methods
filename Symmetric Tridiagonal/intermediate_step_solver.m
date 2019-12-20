%% Step 2: Solve LDL^T = b
% Input: Lower triangular matrix L, Diagonal Matrix D, Target vector b
% Return: Solution vector x

% Idea is to solve LDL^T = b in 3 steps
% a) Let y = DL^Tx. First, solve Ly=b for y.
% b) Let z = L^Tx. Next, solve Dz=y for z.
% c) Finally, solve L^Tx=z for x.

function [x] = intermediate_step_solver(L,D,b)
    y = step_a_solve(L,b); % Solve Ly = b
    z = step_b_solve(D,y); % Solve Dz = y
    x = step_c_solve(L.',z); % Solve L^Tx = z
end
