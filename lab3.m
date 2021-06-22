clear all
close all
mean=40;
var=30;
sd=sqrt(var);
X=randn(100,1);
R=X*sd+mean;
histogram(R,'Normalization','pdf')

xlabel('n');
ylabel('h(n)');
ylabel('r');
title('Histogram')