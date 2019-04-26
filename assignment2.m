
% Write a MATLAB-function that visualises all different n solutions
% to the equation z.^n = q, where z
% and q are complex numbers and n is a positive integer.
% The function you write needs to ask for n and q as input parameters
% and display all solutions on a circle line as output values;
% choose an appropriate scaling of both axis.
% Furthermore your function needs to list all solutions to z.^n = q
% in their algebraic representation, giving their real and imaginary parts.
% Test your generated MATLAB le with the following equation z.^7 = +2j, where j is the
% imaginary unit, i.e. j.^2 = -1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = assignment2(varargin)
%%%%% Setting default values in case when no parameters are passed %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if nargin < 2
    n = 7;                                              % set default values of equation
    q = 2;                                              % set default values of equation
else
    n = varargin{1};                                    % set values of equation from the function parameters
    q = varargin{2};                                    % set values of equation from the function parameters
end

%%%%% First solution: Manual one %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% z = zeros(1, n);
% z(1) = q.^(1/n);

% for i = 1:n - 1
%     z(i + 1) = z(1) * exp(1i * 2 * pi * i / n);
%     disp(z(i + 1));
%     disp((z(i + 1).^n));
% end

%%%%% Second solution: More general: Applicable for (the system of )(in)equalities %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
syms z                                                  % Initialize variable
eqn = z^n==q;                                           % Initialize equation
sol = solve(eqn,z);                                     % Initialize solutions

fprintf('%f%+fi\n', [real(sol(:)), imag(sol(:))].');    % Print solutions to Command Window

plot(sol, '*');                                         % Draw the solutions
hold on;                                                % retain plots in the current axes so that new plots added to the axes do not delete existing plots.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Draw a circle line:
radius = q.^(1/n);                                      % Initialize a radius of the circle.
angle = 0: .01: 2 * pi;                                 % Initialize a array of angles for drawing the circle.
x = radius * sin (angle);                               % Initialize a array of x-coordinates for drawing the circle.
y = radius * cos (angle);                               % Initialize a array of y-coordinates for drawing the circle.
plot (x, y);                                            % Draw all the points from the (x,y)-array.

axis equal;                                             % use equal data unit lengths along each axis.
% TODO How to choose an appropriate scaling of both axis?
hold off;                                               % set the hold state to off so that new plots added to the axes clear existing plots and reset all axes properties.

end

