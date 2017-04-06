function result = convolve_loop(x, y)
% Convolves two 1D signals using a loop! Uses zero boundary conditions.
%
% param: x, the first signal to convolve
% param: y, the second signal to convolve
% output: the convolution x*y
    result = zeros(numel(x) + numel(y) - 1, 1);
    
    for r_index = 1:numel(result)
        for x_index = 1:numel(x)
            y_index = r_index - x_index + 1;
            if y_index > 0 && y_index <= numel(y)
                result(r_index) = result(r_index) + x(x_index)*y(y_index);
            end
        end
    end
end
