% x,y are vectors of samples s.t: f(x_j)=y_j
% yy are the interpolated values for xx s.t: P_n(xx_k)=yy_k
% ytag are the derivatives at x. that is f'(x_i) = ytag_i
function [yy] = HermiteInterp(x, y, ytag, xx)
    [sorted_x, sorted_y] = SortYByX(y,x);
    [sorted_x, sorted_ytag] = SortYByX(ytag,x);
    sorted_x = sort(horzcat(sorted_x, sorted_x)); % duplicate x entries
    
    map = DividedDifferencesMap(sorted_x, sorted_y, sorted_ytag);
    yy = arrayfun(@(var) HermitePolynomial(var, map, sorted_x), xx);
end