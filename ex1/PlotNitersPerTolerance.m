function PlotNitersPerTolerance(f, ftag, left, right, legend_text)
    error_tols = arrayfun(@(x) 10^(-x), 2:9);
    num_iterations = zeros(size(error_tols));
    
    for i = 1:length(error_tols)
        
        [zero, Niters] = NewtonRaphson(f, ftag,  error_tols(i), left, right);
        num_iterations(i) = Niters;
%         fprintf("10^-%d : num = %d\n", i+1, num_iterations(i));
    end
    hold on
    plot(2:9, num_iterations)
    hold off
end