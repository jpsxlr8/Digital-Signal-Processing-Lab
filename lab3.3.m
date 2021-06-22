clc;
clear all;
close all;
mean=0;
var=1;
sd=sqrt(var);
X=randn(100,1);
R= X*sd+mean;
S=0;
for i=1:length(R)
    S = ((((R(i)-(mean))/(var))^3)+S);
end
Skew = S/length(R);