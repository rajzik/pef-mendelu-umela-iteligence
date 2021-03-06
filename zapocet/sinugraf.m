

x = 0:0.1:2*pi;
y = sin(x);
r = randn(size(x));
r = y + r;
plot(x, y, x, r, '*'), grid on
