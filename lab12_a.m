clc;     
clear all;
close all;
p = [4 -9 15 0 -7];
q = [1 -2 10 6 64];

zplane(p, q);
grid on;
title('Plot of zeros and poles in Z-plane')

zeros = roots(p);
poles = roots(q);

zeros
poles