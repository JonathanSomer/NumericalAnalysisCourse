function [x_0, y_0, x_1, y_1] = ClosestPoints(X, Y, x)
%     X
%     x
    for i = 2:length(X)
       if x <= X(i)
          x_0 = X(i-1);
          y_0 = Y(i-1);
          x_1 = X(i);
          y_1 = Y(i);
          return;
       end
    end
end