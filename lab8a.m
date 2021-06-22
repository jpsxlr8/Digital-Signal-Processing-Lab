clc;
clear all;
close all;

b=[2 9 18 48];
a=[3 3 15 -12];
subplot(2,1,1);
zplane(b,a);
title('Exp 8(a)');

b1=[5 -9 16 -14];
a1=[1 -2 10 0 6 64];
subplot(2,1,2);
zplane(b1,a1);
title('Exp 8(b)');