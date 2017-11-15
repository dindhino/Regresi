close all;
clear;
clc;

x = [1.9; 4.1; 5.1; 6.9; 7.3; 7.9];
y = [2.6; 4.5; 4.1; 3.2; 3.0; 1.8];

figure;
plotData(x,y);
title('Regresi Non-linear Univariate 15(c)');
xlabel('x');
ylabel('y');
m = length(x);

X = [ones(m, 1) x x.^2 x.^3 x.^4 x.^5 x.^6 x.^7 x.^8]

theta = (pinv(X'*X))*X'*y

hold on;
plot(x, X*theta, '-')
legend('Data Training', 'Regresi Non-linear Univariate')
hold off;

hold on;
data = 6;
Data = [1 data data.^2 data.^3 data.^4 data.^5 data.^6 data.^7 data.^8];
scatter(data, Data*theta)
hold off;