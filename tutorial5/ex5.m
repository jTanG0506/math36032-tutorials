function ex5
  y0 = fzero(@(y0) sol_diff(y0), 0);
  [t, y] = ode45(@(t, y) ode(t, y), [0, 20 * pi], y0);
  plot(t, y)
end
  
function yd = sol_diff(y0)
  [t, y] = ode45(@(t, y) ode(t, y), [0, 2 * pi], y0);
  yd = y(end) - y0;
end

function dydt = ode(t, y)
  dydt = -y^3 + sin(t);
end
