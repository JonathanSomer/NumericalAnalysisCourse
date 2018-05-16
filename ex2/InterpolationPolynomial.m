function [P]=InterpolationPolynomial(x,y)
    sample_size = length(x);
    
    lagrange_basis_polynomials = zeros(sample_size);
    for i = 1:sample_size
       lagrange_basis_polynomials(i) = LagrangeBasisPolynomial(x, y, i);
    end
    
    
    
    P = @(x) y*
end