
%{
    assumes x > 0
    finds some y such that exp(y) > x
%}
function [y] = logUpperBound(x)
    y = 1;
    while(exp(y) <= x)
        y = y*2;
    end
end