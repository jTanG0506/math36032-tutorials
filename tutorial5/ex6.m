m = 1;       % Mass of the object (kg)
v0 = 100;    % Initial velocity (ms^-1)
K = 0.001;   % Friction force constant (kg/m)
g = 10;      % Gravitational acceleration (ms^-2)

% z = [z(1); z(2)]'
%   = [y; vy]'
%   = [z(2); -g - K/m * abs(z(1)) * z(1)]
upODE = @(t, z) [z(2);
                 -g - K / m * abs(z(1)) * z(1)];
upOptions = odeset('events', @upEvent);
[tUp, yUp] = ode45(upODE, [0, v0 / g], [0, v0], upOptions);

[tUp(end), sqrt(m / K / g) * atan(sqrt(K / m / g) * v0)]
[yUp(end, 1), m / 2 / K * log(1 + K * v0^2 / m / g)]

downODE = @(t, z) [z(2);
                   g - K / m * abs(z(1)) * z(1)];
downOptions = odeset('events', @downEvent);
[tDown, yDown] = ode45(downODE, [tUp(end), 2 * v0 / g],[yUp(end, 1) 0], downOptions);

[tDown(end), sqrt(m / K/ g) / 2 * log(1 + 2 / m / g * (K * v0^2 + sqrt(K^2 * v0^4 + m * g * K * v0^2)))]

hold on;
plot(tUp, yUp(:, 1))
plot(tDown, yDown(:, 1))
