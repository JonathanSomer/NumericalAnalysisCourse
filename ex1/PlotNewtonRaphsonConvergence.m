
%{
    PART 1 Newton Raphson
%}


% (a) f(x) = x^3, in (−100, 10) 
f1 = @(x) x^3;
f_tag1 = @(x) 3*(x^2);
a1 = -100;
b1 = 10;
fprintf('starting f1\n')
PlotNitersPerTolerance(f1, f_tag1, a1, b1, "f(x) = x^3, in (−100, 10)")

% (b) f(x) = x^10, in (−10, 10)
f2 = @(x) x^10;
f_tag2 = @(x) 10*(x^9);
a2 = -10;
b2 = 10;
fprintf("starting f2\n")
PlotNitersPerTolerance(f2, f_tag2, a2, b2, "f(x) = x^10, in (−10, 10)")

% (c) f(x)=tanh(9x)+ (x/2) + 0.3 in(−1,1)
f3 = @(x) tanh(9*x) + (x/2) + 0.3;
f_tag3 = @(x) (1 - tanh(9*x)^2)*9 + (1/2);
a3 = -1;
b3 = 1;
fprintf("starting f3\n")
PlotNitersPerTolerance(f3, f_tag3, a3, b3, "f(x)=tanh(9x)+ (x/2) + 0.3 in(−1,1)")

hold on
legend("f(x) = x^3, in (−100, 10)", "f(x) = x^{10}, in (−10, 10)", "f(x)=tanh(9x)+ (x/2) + 0.3 in(−1,1)")
hold off

%{
    PART 2 Log Function
%}

