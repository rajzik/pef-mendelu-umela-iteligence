function [] = perioda(kam)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

a = 0:0.1:kam;

si = sin(a);
co = cos(a);

figure(1);
plot(si);
title('sin');

figure(2);
plot(co);
title('cos');

figure(3);
plot(a, si, a, co);
title('Oba');

end

