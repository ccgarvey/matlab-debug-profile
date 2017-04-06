% Test suite for Newton's method.
function test_results = test_newton()
    test_results = functiontests(localfunctions);
end

% Case to test a simple parabola produces a true zero value
function testParabolaFunctionValue(testCase)
    % Parameters
    parabola = @(x) (x-1)*(x+3);
    derivative = @(x) 2*x;
    tolerance = eps;
    start = 1;
    
    % Find solution
    solution_x = newton(parabola, derivative, start, tolerance);
    
    % Check result
    verifyEqual(testCase, parabola(solution_x), 0, 'AbsTol', tolerance);
end

% Case to test a simple symmetric parabola produces an expected zero location
function testSymmetricParabolaXZero(testCase)
    % Parameters
    root = 3;
    parabola = @(x) (x-root)*(x+root);
    derivative = @(x) 2*x;
    tolerance = eps;
    start = -1;
    
    % Find solution
    solution_x = newton(parabola, derivative, start, tolerance);
    
    % Check result
    verifyEqual(testCase, abs(solution_x), root, 'AbsTol', eps*5);
end

% Case to test a skewed sinusoidal function produces a zero value
function testSkewSinusoidFunctionValue(testCase)
    % Parameters
    sinusoid = @(x) sin(x) + x/10 + 1.5;
    derivative = @(x) cos(x) + 1/10;
    tolerance = 10*eps;
    start = 0;
    
    % Find solution
    solution_x = newton(sinusoid, derivative, start, tolerance);
    
    % Check result
    verifyEqual(testCase, sinusoid(solution_x), 0, 'AbsTol', tolerance);
end
