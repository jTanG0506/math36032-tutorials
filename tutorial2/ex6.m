format long;

number_of_tiles = @(n,k) floor(sqrt(n^2-k.^2));

for n = 10.^(2:6)
  disp([4 * sum(number_of_tiles(n, 1:n))/ n^2; pi]);
end
