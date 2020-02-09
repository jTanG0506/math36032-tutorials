isLeap(2000);
isLeap(2016);
isLeap(1900);
isLeap(2015);

function isLeap(year)
    if (mod(year, 4) == 0 && mod(year, 100) ~= 0 || mod(year, 400) == 0)
        disp([num2str(year), ' is a leap year.']);
        return;
    end
    disp([num2str(year), ' is not a leap year.']);
end
