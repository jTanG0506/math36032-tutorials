M = rand(5, 5);
diagonalWithWidth(M, 3)

function A = diagonalWithWidth(M, n)
    validateattributes(M, {'numeric'}, {'square'}, '', 'matrix')
    validateattributes(n, {'numeric'}, {'integer', '<=', size(M, 1), '>', 0}, '', 'width')
    A = M - tril(M, -n) - triu(M, n);
end