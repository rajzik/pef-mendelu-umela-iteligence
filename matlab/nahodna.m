function [ v1, v2 ] = nahodna(pocet)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    
    v1 = rand(1, pocet);
    v2 = randn(1, pocet);
    x = 1:pocet;
    figure(1);
    plot(x, v1,'-.', 'LineWIdth', 2);
    
    figure(2);
    plot(x, v2, '*r');
    
    figure(3);
    plot(x, v1, '.g', x, v2, '*r');
    title('Ahooooooooooooooj');
    xlabel('Tvoje mama');
    ylabel('Tvoje teta');
    grid('on');
    legend('rovnomerne', 'gausovo');
end

