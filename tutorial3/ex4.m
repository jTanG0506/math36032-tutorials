function Brocards()
  for n = 1:17
    nf = factorial(n);
    m = round(sqrt(nf + 1));
    if (m^2 == nf + 1)
      fprintf('A solution to n! + 1 = m^2 is (n, m) = (%d, %d)\n', n, m);
    end
  end
end
