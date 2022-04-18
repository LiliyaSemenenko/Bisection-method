% a = 0;
% b = 1;
% TOL = 10^(-8);
% N0 = 1000;
% y = 1 - x^2 - sin(x);

function [p,info,I] = Bisection(a,b,TOL,N0)
%Bisection from section 2.1
%info=0: got the solution; otherwise info=1
I = 1; % number of Iterations
FA = f(a); % plug a = 0 into the main function y = 1 - x^2 - sin(x), f(0) = 1 > 0
while I<=N0 % 1<=1000 2<=1000
    p = (a+b)/2; % (0+1)/2=0.5
    FP = f(p); % plug new value p = 0.5 into the main function f(0.5) = 0.27057..
    if abs(FP)<TOL || (b-a)/2<TOL % if the positive result of f(0.5)<10^(-8) or 0.5<10^(-8)
                                  % verificaltion that value is small enough
       info = 0; % got the solution. outputs are displayed
       break
    end
    I = I + 1; % 2
    if FA*FP>0 % f(0)*f(0.5) > 0,    1*0.27057 > 0
        a = p; % a = 0.5
        FA = FP; % f(a) = 0.27057 (f(p) = 0.27057)
    else
        b = p;
    end
    
end
if I>N0
    info = 1;
end
end
