clc;
clear all; 
close all;
 
N=-10:1:20;
U=[zeros(1,10) ones(1,21)];
 
subplot(2,2,1);
stem(N,U);
xlabel('n-->');
ylabel('u[n]-->');
title('Unit step signal');
 
Ramp=N.*U;
subplot(2,2,2);
stem(N,Ramp);
xlabel('n-->');
ylabel('r[n]-->')
title('Ramp signal');
 
N_down=downsample(N,2);
U_down=downsample(U,2);
subplot(2,2,3);
stem(N_down,U_down);
xlabel('n-->');
ylabel('u[n/2]-->');
title('Downsampled unit step signal');
 
Ramp_down=downsample(Ramp,2);
subplot(2,2,4);
stem(N_down,Ramp_down);
xlabel('n-->');
ylabel('r[n/2]-->');
title('Downsampled ramp signal');

