function counter = collatz(N)
counter = 0;
n = N;
while (n ~= 1)
  if (bitand(n, 1))
    n = 3 * n + 1;
  else
    n = n / 2;
  end
  counter = counter + 1;
end
end
