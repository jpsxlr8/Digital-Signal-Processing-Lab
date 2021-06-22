clc;
clear all;
close all;
X=randn(200,1);
Y=rand(200,1);
[correlation lag]= xcorr(X,Y);
figure;
subplot(3,1,1);
stem(X);
xlabel('Gaussian Distribution');
ylabel('Corresponding value')
subplot(3,1,2);
stem(Y);
xlabel('Uniform Distribution');
ylabel('Corresponding value');
subplot(3,1,3);
stem(lag, correlation);
xlabel('lag');
ylabel('correlation');

p=corr(X,Y)