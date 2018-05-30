clear all
close all

%% Input Impedance
f = 0:0.001:10;

parameters = load('question01parameters.mat');

[ZinCReal,ZinCImag] = ZvsF(f,parameters);

figure

subplot(2,1,1)
plot(f,ZinCReal)
ylim([0 100])
title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')

subplot(2,1,2)
hold on
plot(f,ZinCImag)
plot(f,zeros([1,length(f)]),'k--')
ylim([-2 2])
title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')


