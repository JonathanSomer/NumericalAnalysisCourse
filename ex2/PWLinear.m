function [yy] = PWLinear(x, y, xx)
    [x,y] = SortYByX(y,x);
    
    n = length(xx);
    yy = zeros(1,n);
    
    for i = 1:n
       [x_0, y_0, x_1, y_1] = ClosestPoints(x, y, xx(i));
       yy(i) = LinearInterpolation(x_0, y_0, x_1, y_1, xx(i));
    end
end