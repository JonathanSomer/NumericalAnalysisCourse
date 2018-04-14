    
function [numbers, precomputedLogs] = preComputation()
    d = 20;
    numbers = ones(d);
    precomputedLogs = ones(d);
    for i = 1:d
        numbers(i) = 1 + 10^(8-d+i);
        precomputedLogs(i) = log(numbers(i));
    end
end