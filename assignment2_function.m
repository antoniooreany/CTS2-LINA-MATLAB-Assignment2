function [] = assignment2_function(n,q)
% grid on
% axis equal
% axis([-3,3,-3,3])

% Write a MATLAB-function that visualises all different n solutions 
% to the equation z.^n = q, where z
% and q are complex numbers and n is a positive integer.
% The function you write needs to ask for n and q as input parameters 
% and display all solutions on a circle line as output values; 
% choose an appropriate scaling of both axis.
% Furthermore your function needs to list all solutions to z.^n = q 
% in their algebraic representation, giving their real and imaginary parts.
% Test your generated MATLAB le with the following equation z.^7 = +2j, where j is the
% imaginary unit, i.e. j.^2 = ?1.


% n = 7;
% q = 2i;

%%%%%First solution%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

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

%%%%%Second solution%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

syms z
eqn = z^n==q;
sol = solve(eqn,z);

for i = 1:n
    fprintf('%f%+fj\n', real(sol(i)), imag(sol(i)));
end

plot(sol, '+');

% TODO display all solutions on a circle line as output values; 

% x = sin (0: .01: 2 * pi);
% y = cos (0: .01: 2 * pi);
% plot (x, y);
% axis equal

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% disp(sol);

% TODO How to choose an appropriate scaling of both axis?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

% outputArg1 = sol;

end

