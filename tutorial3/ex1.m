% Find the last two digits of 2020^2020 using
% power algorithm for modulo arithmetic

n = 2020;
binaryDigits = dec2bin(n);
pow2k = [mod(n, 100)];

for i = 1:length(binaryDigits)
  pow2k = [pow2k mod(pow2k(end)^2, 100)];
end

lastTwoDigits = 1;
for i = 1:length(binaryDigits)
  if (binaryDigits(end + 1 - i) == '1')
    lastTwoDigits = mod(lastTwoDigits * pow2k(i), 100);
  end
end

lastTwoDigits