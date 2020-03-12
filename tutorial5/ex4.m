options = odeset('refine', 8);

% z = [z(1); z(2)]'
%   = [x(0); x(1)]'
%   = [z(2); (z(1) - z(2)) * sin(t) - (z(1) + 1) * z(2)]
ode = @(t, z) [z(2);
               (z(1) - z(2)) * sin(t) - (z(1) + 1) * z(2)];

[t, z] = ode45(ode ,[0, 500] ,[1, -0.2], options);
plot(z(:, 1), z(:, 2))
