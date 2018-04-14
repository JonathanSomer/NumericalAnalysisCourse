%{
    using:
    log(x) = log(x/k) + log(k)
    
    recursively divide x by some k and sum the log(k)
    stop when x is close enough to 1 and use log(1) == 0

    
%}
function [y] = myLog2(a, x)
    % assertions 
    if (x < 0 || a < 0)
        fprintf("Error: negative base or number\n")
        return
    end
    if (a == 1)
        fprintf("Error: a == 1 \n")
        return
    end
    
    % numbers and their pre-computed logs
    [numbers, precomputedLogs] = preComputation();    
    
    % main
    if a < 1
        log_a = -recursiveLog(1/a, numbers, precomputedLogs);
    else
        log_a = recursiveLog(a, numbers, precomputedLogs);
    end
    
    if x < 1
        log_x = -recursiveLog(1/x, numbers, precomputedLogs);
    else
        log_x = recursiveLog(x, numbers, precomputedLogs);
    end
    
    y = log_x / log_a;
end