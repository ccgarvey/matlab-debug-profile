function x = newton(func, derivative, x_start, tolerance)
% Finds the zero of a function using Newton's Method.
%
% param: func, the function being searched
% param: derivative, the derivative of func
% param: x_start, the first x value to try
% param: tolerance, the root x satisfies abs(f(x)) < tolerance
% return: the x value of the root
    x = x_start;
    
    while abs(func(x)) >= tolerance
        derivative_value = derivative(x);
        while abs(derivative_value) < 1e-15
            x = x + abs(x)/100*(rand()-0.5);
            derivative_value = derivative(x);
        end
        x = x - func(x)/derivative_value;
    end
end
