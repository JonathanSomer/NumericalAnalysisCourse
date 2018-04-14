function [y] = myLog(a,x)
    
    % constants
    tol = 10^-9;
    
    % assertions
    if (x < 0 || a < 0)
        fprintf("Error: negative base or number\n")
        return
    end
    if (a == 1)
        fprintf("Error: a == 1 \n")
        return
    end
    
    % main algorithm
    lx = logLowerBound(x);
    rx = logUpperBound(x);
    
    la = logLowerBound(a);
    ra = logUpperBound(a);
    
    
    while (isInInterval(0, la, ra)) || FractionValueRange(lx,rx,la,ra) > tol
        [lx, rx] = binaryStep(lx, rx, x);
        [la, ra] = binaryStep(la, ra, a);
    end
    
    y = Middle(lx, rx) / Middle(la, ra);
end