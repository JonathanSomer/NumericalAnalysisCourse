% profile on
% 1.
CompareMethods(@(x) x, @(x) 1)

% 2. 
CompareMethods(@(x) x^8 + 6*(x^3), @(x) 8 * (x^7) + 18 * (x^2))
% 
% % 3.
CompareMethods(@(x) tanh(9*x) + (x/2), @(x) (sech(9*x)^2)*9 + 0.5)
% 
% % 4. 
CompareMethods(@(x) sin(20*x)*(1+x), @(x) cos(20*x)*20*(1+x) + sin(20*x))

% 5.
CompareMethods(@(x) abs(x), @(x) (x>=0).*1 + (x<0).*(-1))

% 6.
CompareMethods(@(x) 1 / (1 + (16*(x^2))), @(x) -((1 / (1 + (16*(x^2))))^2)*32*x)
% profile viewer


% profile on
% 1.
% CompareMethodsNoisy(@(x) x, @(x) 1)
% 
% % 2. 
% CompareMethodsNoisy(@(x) x^8 + 6*(x^3), @(x) 8 * (x^7) + 18 * (x^2))
% % 
% % % 3.
% CompareMethodsNoisy(@(x) tanh(9*x) + (x/2), @(x) (sech(9*x)^2)*9 + 0.5)
% % 
% % % 4. 
% CompareMethodsNoisy(@(x) sin(20*x)*(1+x), @(x) cos(20*x)*20*(1+x) + sin(20*x))
% 
% % 5.
% CompareMethodsNoisy(@(x) abs(x), @(x) (x>=0).*1 + (x<0).*(-1))
% 
% % 6.
% CompareMethodsNoisy(@(x) 1 / (1 + (16*(x^2))), @(x) -((1 / (1 + (16*(x^2))))^2)*32*x)
% profile viewer

