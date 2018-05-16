% x,y are vectors of samples s.t: f(x_j)=y_j
% yy are the interpolated values for xx s.t: P_n(xx_k)=yy_k
% ytag are the derivatives at x. that is f'(x_i) = ytag_i
function [yy] = HermiteInterp(x, y, ytag, xx)
    [sorted_x, sorted_y] = SortYByX(y,x);
    [sorted_x, sorted_ytag] = SortYByX(ytag,x);
    sorted_x = sort(horzcat(sorted_x, sorted_x)); % duplicate x entries
    
    mat = DividedDifferencesMatrix(sorted_x, sorted_y, sorted_ytag);
    first_row = mat(1,:);
    nn = length(xx);
    yy = zeros(1, nn);
    for i = 1:nn
        cum = [1, cumprod(xx(i) - sorted_x)];
        yy(i) = dot(first_row, cum(1:end-1));
    end    
end