% func is a function handle
% functag is a handle for the functions' derivative 
% a,b is the interval
% tol ("tolerance") is the absoloute error allowed at the root
% return - zero is the root, Niters is the number of iterations
function [zero, Niters]= NewtonRaphson(func, functag, tol, a, b)
    left = a;
    right = b;
    
    % initialize:
    x = Middle(left, right);
    fx = func(x);
    Niters = 0;
    size_of_correction = Inf;
    
    % iterations:
    while (fx ~=0 && size_of_correction > tol)
        Niters = Niters + 1;
        
        if functag(x) == 0
            x = Middle(left,right);
        else
            correction = - (fx/functag(x));
            x = x + correction;
            size_of_correction = abs(correction);
        end
        
        if OutsideInterval(x,left,right)
            x = Middle(left, right);
        end
        fx = func(x);
        
        % maintain f(left)f(right)<0
        if ((fx < 0 && func(right) > 0) || (fx > 0 && func(right) < 0))
            left = x;
        else
            right = x;
        end     
%         fprintf("%f\n", fx);
    end
    zero = x;
end