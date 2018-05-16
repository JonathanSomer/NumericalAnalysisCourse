function [interpolated_image] = ImageInterpolationFix(img, n_rows, n_cols, expansion_ratio)
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
            for seg = 1:length(x)-1
                x_seg = x(seg:seg+1);
                y_seg = y(seg:seg+1);
                xx_seg = expansion_ratio*(seg-1)+2 : expansion_ratio*seg;
                
                [yy_seg] = LagrangeInterp(x_seg, y_seg, xx_seg);
                interpolated_image(xx_seg,col,rgb) = yy_seg; 
            end
        end
    end
end