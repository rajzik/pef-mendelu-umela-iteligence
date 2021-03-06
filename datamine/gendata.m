function [  ] = gendata()
data = rand(10000,2)*100;

x = data(:, 1);
y = data(:, 2);




idx = find(y>50);
idx = idx(1:500);

x1 = x(idx);
y1 = y(idx);

idx = find(not(y>50));
idx = idx(1:500);

x2 = x(idx);
y2 = y(idx);

figure();
plot(x1, y1, 'x', x2, y2, 'o');

savedata(x1, y1, x2, y2, 'prvni.csv');


idx = find(x>y);
idx = idx(1:500);

x1 = x(idx);
y1 = y(idx);

idx = find(not(x>y));
idx = idx(1:500);

x2 = x(idx);
y2 = y(idx);

figure();
plot(x1, y1, 'x', x2, y2, 'o');


savedata(x1, y1, x2, y2, 'druhy.csv');


idx = find((x<50&y<50)|(x>50&y>50));
idx = idx(1:500);

x1 = x(idx);
y1 = y(idx);

idx = find(not((x<50&y<50)|(x>50&y>50)));
idx = idx(1:500);

x2 = x(idx);
y2 = y(idx);


figure();
plot(x1, y1, 'x', x2, y2, 'o');

savedata(x1, y1, x2, y2, 'treti.csv');



idx = find((y>20) & (y < (2*x + 2)) & (y > (-2 * x + 5)) & (y < (-(2 * x) + 200)));
idx = idx(1:500);

x1 = x(idx);
y1 = y(idx);

idx = find(not((y>20) & (y < (2*x + 2)) & (y > (-2 * x + 5)) & (y < (-(2 * x) + 200) ) ));
idx = idx(1:500);

x2 = x(idx);
y2 = y(idx);


figure();
plot(x1, y1, 'x', x2, y2, 'o')

savedata(x1, y1, x2, y2, 'ctrvty.csv');

idx = find(-(y - 50).^2 < ((x -50).^2 - 1200));
idx = idx(1:500);

x1 = x(idx);
y1 = y(idx);

idx = find(not(-(y - 50).^2 < ((x -50).^2 - 1200)));
idx = idx(1:500);

x2 = x(idx);
y2 = y(idx);

figure();
plot(x1, y1, 'x', x2, y2, 'o')


savedata(x1, y1, x2, y2, 'paty.csv');



end

