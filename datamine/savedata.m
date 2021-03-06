function [] = savedata(x1, y1, x2, y2, file)

nula = "black";
jednicka = "white";
nuly = repmat(nula, length(x1), 1);
jednicky = repmat(jednicka, length(x2), 1);


M = [x1, y1, nuly;
    x2, y2, jednicky];

cell2csv(file, M, ',', 1997, '.');

end