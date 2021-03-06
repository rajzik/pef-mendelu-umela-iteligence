x = 0:0.05:2 * pi;

ysin = sin(x);
ycos = cos(x);

figure(1);
subplot(1,2,1);
plot(x, ysin, '--', x, ycos), grid on
legend('sin(x)', 'cos(x)')

xtan = 0:0.05:1.5;

ytan = tan(xtan);
ycot = cot(xtan);


subplot(1,2,2); 


plot(xtan, ytan, '-x', xtan, ycot, '-v'), grid on
legend('tan(x)', 'cotan(x)')