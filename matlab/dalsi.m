function [ ] = dalsi( )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

meshgrid(1:0.5:4, 1:0.2:2)

figure(2);
t = 1:0.1:10;
[x, y] = meshgrid(-2:0.1:2);

z = x.^2 + y.^2;

surf(x, y, z);
end

    