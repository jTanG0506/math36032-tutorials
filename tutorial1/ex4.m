M = rand(3, 3);
[eVectors, eValues] = eig(M);

for i = 1:3
   M * eVectors(:, i) - eValues(i, i) * eVectors(:, i)
end