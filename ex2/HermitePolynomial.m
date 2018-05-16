function [predicted_y] = HermitePolynomial(x_to_extrapolate, map, x)
    predicted_y = 0;
    product_elements = x_to_extrapolate - x;
    prodd = 1;
    first = 1;
    for last = 1:length(x)
        predicted_y = predicted_y + map(IndexRangeToKey(first, last)) * prodd;
        prodd = prodd * product_elements(last);
    end
end