clear all
close all

f = 0:0.001:10;
parameters = load('question01parameters.mat');

%% Changing phi0
parameters.phi0 = (12/360)*2*pi;
[ZinCReal01,ZinCImag01] = ZvsF(f,parameters);
parameters.phi0 = 0;
[ZinCReal02,ZinCImag02] = ZvsF(f,parameters);
parameters.phi0 = pi;
[ZinCReal03,ZinCImag03] = ZvsF(f,parameters);

figure
subplot(2,1,1)
hold on
plot(f,ZinCReal01)
plot(f,ZinCReal02)
plot(f,ZinCReal03)
ylim([0 100])
title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend('phi0 = 12','phi0 = 0','phi0 = 180')

subplot(2,1,2)
hold on
plot(f,ZinCImag01)
plot(f,ZinCImag02)
plot(f,ZinCImag03)
plot(f,zeros([1,length(f)]),'k--')
ylim([-2 2])
title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')
legend('phi0 = 12','phi0 = 0','phi0 = 180')