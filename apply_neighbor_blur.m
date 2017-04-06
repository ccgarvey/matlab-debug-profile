function blurred_signal = apply_neighbor_blur(signal, width)
% Blurs a signal by averaging values within a region. Uses zero boundaries.
%
% param: signal, the signal to blur
% param: width, the number of neigboring pixels to average
% return: the blurred signal (untrimmed)
    average_kernel = ones(width, 1)/width;
    
    blurred_signal = convolve_loop(average_kernel, signal);
end