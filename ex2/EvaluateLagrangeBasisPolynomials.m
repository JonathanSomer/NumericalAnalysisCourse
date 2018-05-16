function [l_x] = EvaluateLagrangeBasisPolynomials(x, interpolated_x)
    n = length(x);
    l_x = zeros(1,n);
    for i = 1:n
       x_without_i = x([1:i-1, i+1:end]);
       l_x(i) = prod(interpolated_x - x_without_i) / prod(x(i) - x_without_i);
    end
end