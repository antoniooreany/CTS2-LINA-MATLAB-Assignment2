
n = 2;
q = -1;

syms z
eqn = z^n==q;
sol = solve(eqn,z);

fprintf('%f%+fj\n', sol);
% fprintf('%f%+fj\n', real(sol(2)), imag(sol(2)));

% disp(sol);
plot(sol, '+');

