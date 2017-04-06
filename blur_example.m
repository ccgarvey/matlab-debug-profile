% Run an example using a simple blur + custom convolution.

%% Initialize
step = 0.05;
x = -pi:step:pi;
signal = sin(x.*10);

%% Run blur + postprocess
blur_width = 10;
blurred = apply_neighbor_blur(signal, blur_width);
trim = floor(blur_width/2)+1;
blurred = blurred(trim:trim+numel(signal)-1);

%% Plot result
plot(x, blurred);
hold on
plot(x, signal);
xlim([-3.5, 3.5]);
legend('Blurred signal', 'Original signal')

hold off