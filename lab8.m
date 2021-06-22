clc;
clear all;

num=[0.58 0.95 0.49 1];
den=[1 0.75 -0.48 -0.9];

subplot(2,1,1);
zplane(num,den);
title('Pole-zero map');

[h,t]=impz(num,den,10); %10 samples
subplot(2,1,2);
stem(t,h);
title('Impulse response');
xlabel('n');
ylabel('h[n]');