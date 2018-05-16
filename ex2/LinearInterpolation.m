
% assume x_0 < x_1
function [interpolated_y] = LinearInterpolation(x_0, y_0, x_1, y_1, x)
    interpolated_y = y_0 + (x - x_0) * ((y_1 - y_0) / (x_1 - x_0));
end