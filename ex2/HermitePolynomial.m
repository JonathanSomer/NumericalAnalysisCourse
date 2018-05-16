function [predicted_y] = HermitePolynomial(x_to_extrapolate, map, x)
    predicted_y = 0;
    product_elements = x_to_extrapolate - x;
    first = 1;
    for last = 1:length(x)
        predicted_y = predicted_y + map(IndexRangeToKey(first, last)) * prod(product_elements(first:last-1));
    end
end