close all;
clear;
clc;

x = [1.9; 4.1; 5.1; 6.9; 7.3; 7.9];
y = [2.6; 4.5; 4.1; 3.2; 3.0; 1.8];

figure;
plotData(x,y);
title('Regresi Linear Univariate 15(a)');
xlabel('x');
ylabel('y');

w1 = sum((x-mean(x)).*(y-mean(y)))/sum((x-mean(x)).^2)
w0 = mean(y)-(w1*mean(x))

m = length(x);
X = [ones(m, 1) x];
theta = [w0; w1];

hold on;
plot(x, X*theta, '-')
legend('Data Training', 'Regresi Linear Univariate')
hold off;

hold on;
scatter(6, [1 6]*theta)
hold off;