function [powers_of_x] = nPowers(x, n)
    powers_of_x = [];
    for i = 1:n
       powers_of_x = [powers_of_x, x^i];
    end
end