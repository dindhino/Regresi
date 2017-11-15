close all;
clear;
clc;

dataset2 = [3.2, 5.8; 4.1, 5.1; 5.1, 4.0; 6.9, 2.2; 7.3, 1.7; 7.9, 0.9];
x1 = dataset2(:,1)
x2 = dataset2(:,2)
y = [3.2; 4.5; 4.1; 3.2; 3.0; 1.8]

figure;
plot3(x1,x2,y,'rx','MarkerSize',8);
title('Regresi Non-linear Multivariate 16(c)');
xlabel('x1');
ylabel('x2');
zlabel('y');

m = length(y);
X = [ones(m, 1) x1 x2 x1.*x2]

theta = (pinv(X'*X))*X'*y

hold on;
plot3(x1, x2, X*theta, '-')
legend('Data Training', 'Regresi Non-linear Multivariate')
hold off;

hold on;
scatter3(6, 3.1, [1 6 3.1 6*3.1]*theta)
hold off;