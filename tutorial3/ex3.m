floor(sqrt(2))
ceil(sqrt(2))

floor((4^3)^(1/3))

for n = 2:10
  if floor((n^3)^(1/3)) == n - 1
    fprintf('Surprise result for floor((n^3)^(1/3)) = n - 1 for %d\n', n);
  end
end

for n = 2:10
  if ceil((n^5)^(1/5)) == n + 1
    fprintf('Surprise result for ceil((n^3)^(1/3)) = n + 1 for %d\n', n);
  end
end

% To avoid unexpected results due to floating number operations, we can add
% a small number, say 10eps before applying floor.
for n = 2:10
  if floor((n^3)^(1/3) + 10 * eps) == n - 1
    fprintf('Surprise result for floor((n^3)^(1/3)) = n - 1 for %d\n', n);
  end
end

% Similarly, we can subtract 10eps before applying ceil.
for n = 2:10
  if ceil((n^5)^(1/5) - 10 * eps) == n + 1
    fprintf('Surprise result for ceil((n^3)^(1/3)) = n + 1 for %d\n', n);
  end
end
