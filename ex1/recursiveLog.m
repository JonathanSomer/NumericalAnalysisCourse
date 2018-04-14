
function [log_x] = recursiveLog(x, numbers, precomputedLogs)
    [k, i] = maxLessThan(numbers, x);
    if i < 0
        log_x = 0;
        return
    end
    log_x = precomputedLogs(i) + recursiveLog(x/k, numbers, precomputedLogs);
end