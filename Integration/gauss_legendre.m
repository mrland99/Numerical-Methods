%% Gause Legendre Quadrature (Golub-Welsch Implementation)
% Computes, displays, and returns the nodes and weights for
% n interpolation points
function [x, w] = gauss_legendre(n)
    J = zeros(n);
    alpha = zeros(n, 1);
    beta = sqrt((0:n-1).^2./(4*(0:n-1).^2 - 1));
    % beta_0 is not defined: make it NaN to make it easier to spot
    % if we use it by mistake.
    beta(1) = NaN;
    
    % construct J
    if (n ~= 1)
       for i=1:n
           J(i,i) = alpha(i); % zeros
           if (i == 1)
               J(i, i+1) = beta(i+1);
           elseif (i == n)
               J(i, i-1) = beta(i);
           else
               J(i, i-1) = beta(i);
               J(i, i+1) = beta(i+1);
           end
       end 
    end
    
    [V, D] = eig(J);
    
    % roots of phi_{n+1} are the eigen values of matrix
    x = ones(n,1);
    x = D*x;
    
    % we know w(x) = 1, so integral from -1 to 1 of w(x) = 2
    % We hard code it in
    w = zeros(n,1);
    for i=1:n
       w(i) = V(1,i)^2*2; 
    end
    
    % display the results
    fprintf('n = %d\n', n);
    for i=1:n
        fprintf('node: %+.16e, \t w(x) = %+.16e\n', x(i), w(i));
    end
end