% x,y are vectors of samples s.t: f(x_j)=y_j
% yy are the interpolated values for xx s.t: P_n(xx_k)=yy_k
function [yy]=LagrangeInterp(x, y, xx)    
    
    if ValidateLagrangeInterpInput(x,y)
       return; 
    end
    
    n = length(x);
    denomenator = zeros(1, length(x));
    for i = 1:n
       x_without_i = x([1:i-1, i+1:end]);
       denomenator(i) = prod(x(i) - x_without_i);
    end
    
    yy = zeros(1, length(xx));
    for i = 1:length(yy)
       interpolated_x = xx(i);
       
       prod_elements = interpolated_x - x;
       numerator_prod = prod(prod_elements);
       numerator = rdivide(numerator_prod, prod_elements);
       
       l_x = rdivide(numerator, denomenator);
        
       yy(i) =  dot(y,l_x);
    end
end
