clc
close all
clear all
n=0:20;
for i=1:length(n)
  s(i) =  2*n(i)*(0.8)^n(i);
end
subplot(2,2,1)
stem(n,s);
xlabel('--->n');
ylabel('--->s(n)');
title('signal');
for i=1:length(n)
    d(i) = n(i);
end
subplot(2,2,2)
stem(n,d);
xlabel('--->n');
ylabel('--->d(n)');
title('noise');

for i=1:length(n)
    x(i) = s(i) + d(i);
end
subplot(2,2,3)
stem(n,x);
xlabel('--->n');
ylabel('--->x(n)');
title('signal with noise');

x_down=downsample(x,2);
n_down=downsample(n,2);
subplot(2,2,4)
stem(n_down,x_down);
xlabel('--->n');
ylabel('--->x down(n)');
title('downsampled signal with noise');