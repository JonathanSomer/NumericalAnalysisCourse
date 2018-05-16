% x,y are samples s.t f(x_i) = y_i
% Pn(xx_i) = yy_i
% n is the degree of the polynomial
function [yy] = myLS(x, y, xx, n)
    
    X = zeros(length(x), n);
    for i = 1:length(x)
        X(i,:) = nPowers(x(i), n);
    end
    coefficients = lsqminnorm(X,transpose(y));
    yy = arrayfun(@(x) dot(nPowers(x, n), coefficients), xx);
end