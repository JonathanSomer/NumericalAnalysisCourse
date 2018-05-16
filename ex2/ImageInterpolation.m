function [interpolated_image] = ImageInterpolation(img, n_rows, n_cols, expansion_ratio, method)
    interpolated_image = zeros(n_rows, n_cols, 3);

    for i = 1:n_rows
       if mod(i, expansion_ratio) == 1
          interpolated_image(i,:,:) = img(round(i / expansion_ratio) + 1,:,:);
       end
    end
   
    all_rows = 1:n_rows;
    x = 1:expansion_ratio:n_rows;
    all_rows(x) = [];
    xx = all_rows;
    
    for col = 1:n_cols
        for rgb = 1:3
            y = img(:,col,rgb);
            [yy] = method(x, y, xx);
            interpolated_image(xx,col,rgb) = yy;
        end
    end
end