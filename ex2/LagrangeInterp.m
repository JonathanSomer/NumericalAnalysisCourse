% x,y are vectors of samples s.t: f(x_j)=y_j
% yy are the interpolated values for xx s.t: P_n(xx_k)=yy_k
function [yy]=LagrangeInterp(x, y, xx)    
    
    if ValidateLagrangeInterpInput(x,y)
       return; 
    end
    
    yy = zeros(1, length(xx));
    for i = 1:length(yy)
       l_x = EvaluateLagrangeBasisPolynomials(x, xx(i));
       yy(i) =  dot(y,l_x);
    end
end
