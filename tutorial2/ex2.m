A = rand(5);
p = poly(A);
disp([p(2), -trace(A)]);
disp([p(6), -det(A)]);
disp(polyvalm(p, A));
