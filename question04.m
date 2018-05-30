clear all
close all

f = 0:0.001:10;
parameters = load('question01parameters.mat');

%% Changing phi0
parameters.E1 = 7e6;
parameters.E2 = 6e6;
parameters.R = 12e3;
[ZinCReal01,ZinCImag01] = ZvsF(f,parameters);
parameters.E1 = 14e6;
parameters.E2 = 12e6;
parameters.R = 16e3;
[ZinCReal02,ZinCImag02] = ZvsF(f,parameters);

figure
subplot(2,1,1)
hold on
plot(f,ZinCReal01)
plot(f,ZinCReal02)
ylim([0 100])
title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend('normal','hypertension')

subplot(2,1,2)
hold on
plot(f,ZinCImag01)
plot(f,ZinCImag02)
plot(f,zeros([1,length(f)]),'k--')
ylim([-2 2])
title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')
legend('normal','hypertension')