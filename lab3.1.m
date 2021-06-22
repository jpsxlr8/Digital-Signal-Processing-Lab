clc;        % clears command window
clear all;  % clear all variables
close all;  % close all figures

var = 1;
mean = 0;
sd = sqrt(var);

X = randn(100, 1);
R = X*sd + mean;

stem(1:length(R), R);
xlabel('---> i');
ylabel('---> value of ith Generated Gaussian Number');
title('Plot of Generated Gaussian Numbers');

S = 0;
for i=1:length(R)
   t = ((R(i)-mean)/ var)^3;
   S = S + t;
end

Skew = S / length(R)