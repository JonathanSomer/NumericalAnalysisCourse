function [max, index] = maxLessThan(numbers, x)
    index = -1;
    max = -inf;
    for i = 1:length(numbers)
       n = numbers(i);
        if n > max && n < x
          max =  n;
          index = i;
       end
    end
end