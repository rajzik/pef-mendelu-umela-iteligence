
subplot(1,2,1);

[x, y] = engine_dataset;
input = x;
targets = y;

spot = x(1,:);
rych = x(2,:);

moment = y(1,:);
emise = y(2,:);

figure(1);

subplot(2,2,1);

plot(spot, emise, '*g');


subplot(2,2,2);

plot(spot, moment, 'pr');


subplot(2,2,3);

plot(rych, emise, '+m');


subplot(2,2,4);

plot(rych, moment, '+y');

% nnstart
