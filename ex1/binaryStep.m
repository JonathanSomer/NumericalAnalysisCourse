function [lx, rx] = binaryStep(lx, rx, x)
    mx = Middle(lx, rx);
    if(exp(mx) > x)
        rx = mx;
    else
        lx = mx;
    end
end