format long

pairs = [
    [pi, 103993/33102]
    [factorial(10), factorial(6) * factorial(7)]
    [factorial(6) * factorial(7), factorial(3) * factorial(5) * factorial(7)]
    [log(2), (2/5)^(2/5)]
    [pi^(3^2), 10*exp(2^3)]
    [pi^4 + pi^5, exp(6)]
];

for i = 1:size(pairs, 1)
   printConincidence(pairs(i, 1), pairs(i, 2));
end

function printConincidence(a, b)
    disp([a, b, a - b]);
end