function [] = graf( )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

uhel = 0:0.05:2*pi;
pocet = length(uhel);
l = rand(1, pocet);
% l = ones(1, pocet);
polar(uhel, l);

figure(2);
roky = 2015:2014+pocet;

bar(roky, l);


figure(3);
pie(abs(randn(3)));

%%%%%%%%%%%%%%%%%
interval = -5:0.05:5;
y = randn(1, 10000);

figure(4);
hist(y, interval);



end

