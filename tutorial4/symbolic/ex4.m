syms n

A = symsum(1/(3^n * n), n, 1, inf)
B = symsum(n/3^n, n, 1, inf)
C = symsum(1/n^4, n, 1, inf)
