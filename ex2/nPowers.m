function [powers_of_x] = nPowers(x, n)
    powers_of_x = zeros(1,n);
    p = x;
    for i = 1:n
       powers_of_x(i) = p;
       p = p*x;
    end
end