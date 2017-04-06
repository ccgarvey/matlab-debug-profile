function run_convolve_timings(trials)
% Runs many trials of the methods conv and convolve_loop.
%
% Use the profiler to time the execution of this method.
% param: trials, the number of trials to run
    dimension = 30;
    x = rand(dimension, 1);
    y = rand(dimension, 1);
    
    for trial = 1:trials
        conv(x, y);
        
        convolve_loop(x, y);
    end
end