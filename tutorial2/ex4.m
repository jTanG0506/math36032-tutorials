xCount = 0;
yCount = 0;

x = 1;
y = 1;
threshold = 10^-12;

xSeq = @(x) (x^2 + 2)/(2 * x);
ySeq = @(y) (y + 2)/(y + 1);

while (abs(x - sqrt(2)) >= threshold)
   x = xSeq(x);
   xCount = xCount + 1;
end

while (abs(y - sqrt(2)) >= threshold)
    y = ySeq(y);
    yCount = yCount + 1;
end

disp(['Number of iterations for x: ', num2str(xCount)]);
disp(['Number of iterations for y: ', num2str(yCount)]);
