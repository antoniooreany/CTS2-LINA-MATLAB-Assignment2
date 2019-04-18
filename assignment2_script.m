

n = 7;
q = 2i;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

z = zeros(1, n);
z(1) = q.^(1/n);
disp(z(1));
disp((z(1).^n));

for i = 1:n - 1
    z(i + 1) = z(1) * exp(1i * 2 * pi * i / n);
    disp(z(i + 1));
    disp((z(i + 1).^n));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

syms z
eqn = z^n==q;
sol = solve(eqn,z);

for i = 1:n
    fprintf('%f%+fj\n', real(sol(i)), imag(sol(i)));
end

plot(sol, '+');
% disp(sol);




