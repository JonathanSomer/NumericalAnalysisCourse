function [is_outside] = OutsideInterval(x,left,right)
    is_outside = (x < left) | (x > right);
end