% Polar Coordinates (Heart)
t = linspace(0, 2 * pi, 300);
r = 1 - sin(t);
polar(t, r)

% Parametric Curve (Heart)
s = [2.^(-20:-4) 0.1:0.01:1];
s = [-s(end:-1:1) s];
x = log(abs(s)) .* sin(s) .* cos(s);
y = abs(s).^0.3 .* sqrt(cos(s));
plot(x, y)

% Contour Plot (Heart)
x = linspace(-8, 8, 100);
y = linspace(-8, 8, 100);
[X, Y] = meshgrid(x, y);
Z = X.^2 + (Y - (2 * (X.^2 + abs(X) - 6))./(3 * (X.^2 + abs(X) + 2))).^2;
contour(x, y, Z, [36, 36]);

% Polar Coordinates (Heart)
r = 2 - 2 * sin(t) + sin(t) .* sqrt(abs(cos(t))) ./ (1.4 + sin(t));
polar(t, r);
