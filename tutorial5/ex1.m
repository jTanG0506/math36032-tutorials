syms y(x)
dsolve(diff(y, x, 2) == diff(y, x)^2 / y - y^2)
