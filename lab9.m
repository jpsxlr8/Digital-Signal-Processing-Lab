clc;
clear all;
close all;

n=0:25;
a=[1 0.75 -0.48 -0.9];
b=[0.58 0.95 0.49 1];

impulse = (n==0);
h = filter(b,a,impulse);

subplot(3, 1, 1)
stem(n, impulse)
title('Impulse Signal')
xlabel('---> n')
ylabel('---> Magnitude')

subplot(3, 1, 2)
stem(n, h)
title('Impulse Response')
xlabel('---> n')
ylabel('---> Magnitude')

[p, t] = impz(b, a, 26);
subplot(3, 1, 3)
stem(t, p)
title('Impulse Response')
xlabel('---> n')
ylabel('---> Magnitude')