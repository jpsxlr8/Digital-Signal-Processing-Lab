clc;        % clears command window
clear all;  % clear all variables
close all;  % close all figures

N=16;
M=32;
x = 0:N-1;
X = zeros(1, M);

for n=0:N-1;
    for k=0:M-1;
        X(k+1)=X(k+1)+x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end

Xmag = abs(X);
Xphase = angle(X);

subplot(2,2,1);
stem(Xmag);
xlabel('k');
ylabel('Magnitude');
title('DFT Using for loop');

subplot(2,2,2);
stem(Xphase);
xlabel('k');
ylabel('Phase');
title('DFT Using for loop');


y = fft(x); 

subplot(2,2,3);
stem(abs(y));
xlabel('k');
ylabel('Magnitude of X(k)');
title('DFT Using inbuilt function');

subplot(2,2,4);
stem(angle(y));
xlabel('k');
ylabel('phase of x(k)');
title('DFT Using inbuilt function');