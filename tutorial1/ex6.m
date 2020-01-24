A = hilb(11);
B = rand(11, 11);
x = rand(11, 1);

a1 = A * x;
a2 = A \ a1;

b1 = B * x;
b2 = B \ b1;

x - a2
x - b2