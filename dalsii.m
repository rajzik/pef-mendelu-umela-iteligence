function [  ] = dalsii(  )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
t = 0:0.05:2*pi;

sinx = sin(t);
cosx = cos(t);

tangx = tan(t);

cotgx = cot(t);


figure();

subplot(1, 2, 1);

plot(t, sinx, t, cosx);

subplot(1, 2, 2);
plot(t, tangx, t, cotgx);



end

