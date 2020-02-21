syms x

A = int(sin(x) / x, x, -inf, inf)
B = int(1/(1 + x^2), x, 0, 1)
C = int(exp(-x^2), x, 0, inf)
D = int(log(x + 1)/(x^2 + 1), x, 0, 1)
E = int((x^11 - 1)/log(x), x, 0, 1)
