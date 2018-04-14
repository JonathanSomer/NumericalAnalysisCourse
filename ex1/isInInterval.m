function [isInInterval] = isInInterval(x, left, right)
    isInInterval = ~OutsideInterval(x, left, right);
end