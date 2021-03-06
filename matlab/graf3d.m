function [  ] = graf3d(  )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

z = 0:0.1:10;

x = cos(z);
y = sin(z);

plot3(x, y, z);
grid('on');

figure(2);
z = peaks(60);
surf(z);

figure(3);
z = peaks(59);
mesh(z);

figure(4);
surfc(z);
end

