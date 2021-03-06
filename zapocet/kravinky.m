
x = 10;

y = 3:12/9:15;

vysledek = [
    y;
    y.*y;
];

x0 = 1:10;
x0 = x0(:);
x1 = (15) * rand(10,1);
vysld2 = [x0, x1];

n = 20;

x1 = 0:4*pi/(n-1):4*pi;
x2 = sin(x1);
x3 = 0.* (x2<=0)+(x2>0) ;

vysld3 = [
    x1;
    x2;
    x3
];