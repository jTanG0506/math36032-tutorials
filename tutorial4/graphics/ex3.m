syms z

x = linspace(0.9, 1.1, 100);
p = sym2poly((z - 1)^13);
plot(x, polyval(p, x), '*', x, (x-1).^13);
