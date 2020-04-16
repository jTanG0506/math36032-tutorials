fludata = readtable('fludata.txt');

brazilIndicies = find(isfinite(fludata.Brazil));
canadaIndicies = find(isfinite(fludata.Canada));

indices = intersect(brazilIndicies, canadaIndicies);

corrcoef(fludata.Brazil(indices), fludata.Canada(indices))