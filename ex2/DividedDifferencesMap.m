% Initializes a map from some 
function [map_x_index_range_to_divided_difference_value] = DividedDifferencesMap(x, y, ytag)
    map = containers.Map;
    n = length(x);
   
   for num_points = 1:n
       for first  = 1:n        
           last = first + num_points - 1;
           if last > n
               continue
           end
           key = IndexRangeToKey(first, last);
           if x(first) == x(last)
               if num_points == 1
                   map(key) = y(round(first / 2)); % no factorial because evaluates to 1
               elseif num_points == 2
                   map(key) = ytag(round(first / 2)); % no factorial because evaluates to 1
               else
                  fprintf("Error! There were more than 2 identical points in a row.\n This demands a higher derivative than available.");
               end
           else
              map(key) = (map(IndexRangeToKey(first + 1, last)) - map(IndexRangeToKey(first, last - 1))) / (x(last) - x(first));
           end 
       end
   end
   
   map_x_index_range_to_divided_difference_value = map;
end