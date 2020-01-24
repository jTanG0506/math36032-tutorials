% int array from 0 to 10 using range operator
1:10

% zeros matrix of size 3 x 4
zeros(3, 4)

% identity matrix of size 3
eye(3)

% 2 x 3 matrix with all ones
ones(2, 3)

% 3 x 3 random matrix with entries uniform numbers in (2, 4)
rand(3, 3) * 2 + 2

% 3 x 3 random matrix with entries random numbers
% following standard normal distribution N(0, 1)
% N(0, 1) means mean = 0, variance = 1
randn(3, 3)

% 3 x 3 random matrix with entries random numbers
% following standard normal distribution N(1, 2)
% N(1, 2) means mean = 1, variance = 2
sqrt(2) * randn(3, 3) + 1