syms y(x)
dsolve(diff(y, x) == 3 * y(x) / x + x^5/ (2 * y(x) + x^3), y(1) == 0)
ode = @(t, z) 3 * z / t + t^5 / (2 * z + t^3);
[t, z] = ode45(ode, [1, 2], 0);
w = (sqrt(1 + 4 * log(t)) - 1) / 2 .* t .^ 3;
plot(t, z - w)
