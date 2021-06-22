clc;
clear all;
close all;

M=4;
r=0.1;
n=-50:50;
h=zeros(length(n));
for i=1:length(n)  
    h(i)=(4*r*n(i)*cos(pi*n(i)*(1+r)/M)+M*sin(pi*n(i)*(1-r)/M))/(1-(4*r*n(i)/M).^2)*pi*n(i)*M;
end            
h(51)=1/M+r/(M*(4/pi-1)); %when n(i)=0
h(41)=-1*r/M*(2*cos(pi/(4*r*(1+r)))-cos(pi*(1-r)/(4*r))); %n(i)=-M/4r=-10
h(92)=h(41); %n(i)=+M/4r=10

stem(n,h,'m');
xlabel('n-->');
ylabel('h(n)-->');