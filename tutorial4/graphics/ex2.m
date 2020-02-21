t = linspace(0, 2 * pi, 300);
r = 1.0; k = 3.0;
x = r * (k - 1) * cos(t) + r * cos((k - 1) * t);
y = r * (k - 1) * sin(t) - r * sin((k - 1) * t);

plot(x, y);
axis equal;
