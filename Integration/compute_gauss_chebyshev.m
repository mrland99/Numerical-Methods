%% Computes integral of given function using Gauss-Chebyshev Quadrature
% Input: Function f, # of integration points n
% Return: Answer a
% Conditions: f integrates f(x)w(x)dx from -1 to 1 
%    which =    integral of f(cos(theta)) dtheta from 0 to pi
function [a] = compute_gauss_chebyshev(f, n)
    a = 0;
    nodes = zeros(n+1,1);
    % initialize Chebyshev nodes
    for i=1:(n+1)
        nodes(i) = cos(pi*(0.5 + (i-1))/(n+1));
    end
    
    % Calculate answer. We know weights = pi/(n+1)
    for i=1:(n+1)
       a = a + (pi/(n+1))*(f(nodes(i))); 
    end
end