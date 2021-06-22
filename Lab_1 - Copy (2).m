clc;
clear all;
close all;
M=4;
r=0.1;
n=-50:50;
for i= 1:length(n);
    h(i)=((4*r*n(i))*cos(pi*n(i)*(1+r)/M)+M*sin(pi*n(i)*(1-r)/M))/((1-(4*r*n(i)/M))^2)*pi*n(i)*M;
end
    stem(n,h,'m');
    xlabel('--->n');
    ylabel('--->h(n)');
    title('Exp-1');
    