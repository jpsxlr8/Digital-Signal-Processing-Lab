clc;        % clears command window
clear all;  % clear all variables
close all;  % close all figures

N=16;
x = (0:N-1)/N;
X = zeros(1, N);

for n=0:N-1;
    for k=0:N-1;
        X(k+1)=X(k+1)+x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end

subplot(2,2,1);
stem(abs(X));
xlabel('k');
ylabel('Magnitude');
title('IDFT Using for loop');

subplot(2,2,2);
stem(angle(X));
xlabel('k');
ylabel('Phase');
title('IDFT Using for loop');


y=ifft(x);

subplot(2,2,3);
stem(abs(y));
xlabel('k');
ylabel('Magnitude of X(k)');
title('IDFT Using inbuilt function');

subplot(2,2,4);
stem(angle(y));
xlabel('k');
ylabel('Phase of X(k)');
title('IDFT Using inbuilt function');