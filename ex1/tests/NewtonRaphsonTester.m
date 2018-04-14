tol = 10^-8;


f1 = @(x) x^5 + x^4 -100;
f_tag1 = @(x) 5*(x^4) + 4*(x^3);
[zero, Niters]= NewtonRaphson(f1, f_tag1, tol, -1000, +1000);
fprintf("root of f1 = @(x) x^5 + x^4 -100, is: %.9f, \n\t\t\t   should be: 2.33930100754255398\n", zero);


f1 = @(x) sin(x);
f_tag1 = @(x) cos(x);
[zero, Niters]= NewtonRaphson(f1, f_tag1, tol, 0.1, 4);
fprintf("root of f1 = @(x) x^5 + x^4 -100, is: %.9f, \n\t\t\t   should be: 3.141592654\n", zero);

f1 = @(x) sin(x) + x^5 + x^4 -100;
f_tag1 = @(x) cos(x) + 5*(x^4) + 4*(x^3);
[zero, Niters]= NewtonRaphson(f1, f_tag1, tol, 0.1, 4);
fprintf("root of f1 = @(x) x^5 + x^4 -100, is: %.9f, \n\t\t\t   should be: 2.3357002315895731355\n", zero);