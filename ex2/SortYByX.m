function [sorted_x, sorted_y] = SortYByX(y,x)
    [sorted_x, x_order] = sort(x);
    sorted_y = y(x_order);
end