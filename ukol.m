function [ ] = ukol( )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here


t = 0:0.05:2*pi;

offset = randn(1, length(t))./10;

y = sin(t);

y2 = y + offset;

plot(t, y, '-', t, y2, 'o');




end

