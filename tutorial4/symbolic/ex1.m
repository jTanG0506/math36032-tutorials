format short

func = @(x) x^5 + x^4 + 1;
fzero(func, 0)

coeff = [1 1 0 0 0 1];
roots(coeff)

syms x
sol = solve(x^5 + x^4 + 1 == 0, x);
double(sol)
