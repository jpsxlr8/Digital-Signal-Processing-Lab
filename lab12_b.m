clc;       
clear all; 
close all; 

p = [2 7 48 56 0];
q = [32 3 -15 18 -12];

zplane(p, q);
grid on;
title('Plot of zeros and poles in Z-plane')

zeros = roots(p);
poles = roots(q);

zeros
poles