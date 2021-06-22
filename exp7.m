clc;
close all;
x = [-2,1,-1,2,-0.5];
h = [0,2,0,-1,1,0];
m = length(x);
n = length(h);
y_conv = conv(x,h);
y_math = zeros(1,m+n-1);
for i = 1 : m+n+-1
    for j = 1 : m
        k = i-j+1;
        if(k>0 && k<=m)
            y_math(i) = y_math(i)+ x(j)*h(k);
        else
        end
    end
end
disp(y_conv);
disp(y_math);

subplot(2,2,1)
stem(x);
xlabel('----> n');
ylabel('----> x[n]');
title('Input:');

subplot(2,2,2)
stem(h);
xlabel('----> n');
ylabel('----> h[n]');
title('Impulse Response:');

subplot(2,2,3)
stem(y_conv);
xlabel('----> n');
ylabel('----> y[n]');
title('Convolution using conv function :');

subplot(2,2,4)
stem(y_math);
xlabel('----> n');
ylabel('----> y[n]');
title('Convolution using shifting method:');