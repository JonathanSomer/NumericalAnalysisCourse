% the methods: myLS, HermiteInterp, LagrangeInterp, PWLinear
% without noise
function [] = CompareMethods(f, ftag)    
    lsMaxError = [];
    hermiteMaxError = [];
    lagrangeMaxError = [];
    pwMaxError = [];
    Ns = [];
    
    fig = figure;
    for n = 1:8
       Ns = [Ns, 2^n];
       
       x = linspace(-1, 1, 2^n);
       y = arrayfun(@(var) f(var), x);
       ytag = arrayfun(@(var) ftag(var), x);
       
       xx = linspace(min(x), max(x),1e4);
       true_y = arrayfun(@(var) f(var), xx);
       
       [yy] = LagrangeInterp(x, y, xx);
       lagrangeMaxError = [lagrangeMaxError, max(abs(yy - true_y))];    
       
       [yy] = PWLinear(x, y, xx);
       pwMaxError = [pwMaxError, max(abs(yy - true_y))];
       
       
       [yy] = HermiteInterp(x, y, ytag, xx);
       hermiteMaxError = [hermiteMaxError, max(abs(yy - true_y))];
       


       [yy] = myLS(x, y, xx, 25);
       lsMaxError = [lsMaxError, max(abs(yy - true_y))];

       subplot(4,4,n)
       plot(xx, yy, xx, true_y);
       title("function: " + char(f) + "N = 2^" + n)

    end
    
    saveas(fig, "least_squares_example.jpg")
    
    
    figure
    loglog(Ns, lsMaxError, Ns, hermiteMaxError, Ns, pwMaxError, Ns, lagrangeMaxError);
    legend('Least Squares', 'Hermite', 'Piece-Wise Linear', 'Lagrange')
    title("Comparing max error by sample size for function: " + char(f))    
end


