syms n

A = symprod(1 - 4/n^2, n, 3, inf)
B = symprod(4 * n^2 / (4 * n^2 - 1), n, 1, inf)
C = symprod(1 - 1/n^4, n, 2, inf);
D = symprod((n^3 - 1)/(n^3 + 1), n, 2, inf);

C = simplify(C, 'steps', 5)
D = simplify(D, 'steps', 5)

E = symprod(1 - 1/n^3, n, 2, inf);
eAns = cosh(pi * sqrt(3)/2)/(3 * pi);
[double(E), double(eAns)]

F = symprod(1 + 1/n^4, n, 1, inf);
fAns = (cosh(pi * sqrt(2)) - cos(pi * sqrt(2)))/(2 * pi^2);
[double(F), double(fAns)]
