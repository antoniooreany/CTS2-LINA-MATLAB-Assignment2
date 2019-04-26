

% f = @ (x, y) x ^ 2 + y ^ 2-25
% ezplot (f)
% axis equal


% x = sin (0: .01: 2 * pi);
% y = cos (0: .01: 2 * pi);
% plot (x, y);
% axis equal


% syms z                                                  % initialize variable
% eqn = z^pi==-1;                                           % initialize equation
% sol = solve(eqn,z);                                     % initialize solutions
% 
% % for i = 1:n
% %     fprintf('%f%+fj\n', real(sol(i)), imag(sol(i)));    % print solutions to Command Window 
% % end
% 
% plot(sol, '+');  
% disp(pi);

n=7;
q=2;
syms z                                                  % initialize variable
eqn = z^n==q;                                           % initialize equation
V = solve(eqn,z); 
fprintf('%f%+fi\n', [real(V(:)), imag(V(:))].');



