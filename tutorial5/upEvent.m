function [value, isTerminal, direction] = upEvent(t, z)
  value = z(2);
  isTerminal = 1;
  direction = -1;
end
