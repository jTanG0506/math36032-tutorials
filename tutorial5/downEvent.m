function [value, isTerminal, direction] = downEvent(t, z)
  value = z(1);
  isTerminal = 1;
  direction = -1;
end
