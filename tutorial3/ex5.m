N = 1000;
pl = primes(N);

for p = pl
  pf = 1;
  for i = 2:p - 1
    pf = mod(pf * i, p^2);
  end
  if (mod(pf + 1, p^2) == 0)
    fprintf('%d is a Wilson Prime\n', p);
  end
end