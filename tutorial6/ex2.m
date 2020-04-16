tipsData = readtable('tips.csv');

% Average expenses for Male and Female
grpstats(tipsData, 'sex', 'mean', 'DataVars', {'total_bill'})

% Average expenses for Smoker and Non-Smoker
grpstats(tipsData, 'smoker', 'mean', 'DataVars', {'total_bill'})

% Average expenses per day
grpstats(tipsData, 'day', 'mean', 'DataVars', {'total_bill'})

% Tip (as %) of total bill for Male and Female
tipAsPercent = 100 * tipsData.tip ./ tipsData.total_bill;
tipsTable = table(tipAsPercent, 'VariableNames', {'tip_percent'});
tipsData = [tipsData tipsTable];
grpstats(tipsData, 'sex', 'mean', 'DataVars', {'tip_percent'})

% Average cost per person in group
averageCost = tipsData.total_bill ./ tipsData.size;
avgCostTable = table(averageCost, 'VariableNames', {'average_cost'});
tipsData = [tipsData avgCostTable];
grpstats(tipsData, 'size', 'mean', 'DataVars', {'average_cost'})
