% Initializes a matrix who holds at index i,j the divided difference from
% index i to j
function [matrix] = DividedDifferencesMatrix(x, y, ytag)
    n = length(x);
    matrix = zeros(n);
   
   for num_points = 1:n
       for first  = 1:n        
           last = first + num_points - 1;
           if last > n
               continue
           end
           if x(first) == x(last)
               if num_points == 1
                   matrix(first,last) = y(round(first / 2));
               elseif num_points == 2
                   matrix(first,last) = ytag(round(first / 2));
               else
                  fprintf("Error! There were more than 2 identical points in a row.\n This demands a higher derivative than available.");
               end
           else
              matrix(first,last) = (matrix(first + 1, last) - matrix(first, last - 1)) / (x(last) - x(first));
           end 
       end
   end
end