function [] = assignment2(varargin)

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

if nargin < 2   
    n = 7;              % set default values of equasion
    q = 2;              % set default values of equasion
else
    n = varargin{1};    % set values of equation from the function parameters
    q = varargin{2};    % set values of equation from the function parameters
end

%%%%% First solution: Manual one %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

% z = zeros(1, n);
% z(1) = q.^(1/n);
% disp(z(1));
% disp((z(1).^n));
%
% for i = 1:n - 1
%     z(i + 1) = z(1) * exp(1i * 2 * pi * i / n);
%     disp(z(i + 1));
%     disp((z(i + 1).^n));
% end

%%%%% Second solution: More general: Applicable for (the system of )(in)equalities %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

syms z                                                  % initialize variable
eqn = z^n==q;                                           % initialize equation
sol = solve(eqn,z);                                     % initialize solutions

for i = 1:n
    fprintf('%f%+fj\n', real(sol(i)), imag(sol(i)));    % print solutions to Command Window
end

plot(sol, '+');                                         % draw the solutions
hold on;        % retain plots in the current axes so that new plots added to the axes do not delete existing plots.

% TODO display all solutions on a circle line as output values;

radius = q.^(1/n);
angle = 0: .01: 2 * pi;
x = radius * sin (angle);
y = radius * cos (angle);
plot (x, y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axis equal;     % use equal data unit lengths along each axis.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp(sol);

% TODO How to choose an appropriate scaling of both axis?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

hold off;       % set the hold state to off so that new plots added to the axes clear existing plots and reset all axes properties.

end

