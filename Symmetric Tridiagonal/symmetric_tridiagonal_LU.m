%% Step 1:Factor A = LDL^T
% Input: Symmetric Tridiagonal Matrix A
% Return: Lower triangular matrix L, Diagonal Matrix D
function [L, D] = symmetric_tridiagonal_LU(A)
    [m,n] = size(A);
    L = eye(m);
    D = zeros(m);
    D(1,1) = A(1,1);
    a_prime = A(1,1);
    for i = 1:(m-1)
        % update the L and D matrix accordingly
        b = A(i,i+1);
        l = b/a_prime;
        L(i+1,i) = l;
        % increment/update a'
        a_prime = A(i+1,i+1) - (b^2/a_prime);
        D(i+1,i+1) = a_prime;
    end
end