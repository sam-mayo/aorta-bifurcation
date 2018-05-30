clear all
close all

f = 0:0.001:10;
parameters = load('question01parameters.mat');

%% Modeling Different Locations on Tube 2
l2tests = [38,25.33,12.67,0];
Zin2Real = cell(length(l2tests),1);
Zin2Imag = cell(length(l2tests),1);

for k = 1:length(l2tests);
    parameters.l2 = l2tests(k);
    [Zin2Real{k},Zin2Imag{k}] = ZvsFtube2(f,parameters);
end

figure
subplot(2,1,1)
ylim([1 600])
hold on

for k = 1:length(l2tests);
    plot(f,Zin2Real{k})
end

title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend('Point A','Point B','Point C','Point D')

subplot(2,1,2)
ylim([-2 2])
hold on

for k = 1:length(l2tests);
    plot(f,-Zin2Imag{k})
end
plot(f,zeros([1,length(f)]),'k--')

title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (-radians)')
legend('Point A','Point B','Point C','Point D')

%% Modeling the Terminal Impedance
% 
% scaleFactor = 0.1;
% omega = angFreq(f);
% 
% j = sqrt(-1);
% 
% Zt = parameters.Rc2 + j*omega*parameters.L + (parameters.R./(1 + j*omega*parameters.R*parameters.C2));
% 
% for i = 1:length(Zt);
%     ZtReal(i) = abs(Zt(i))*scaleFactor;
%     ZtImag(i) = angle(Zt(i));
% end    
% 
% figure
% hold on
% subplot(2,1,1)
% ylim([1 600])
% plot(f,ZtReal)
% subplot(2,1,2)
% ylim([-2 2])
% plot(f,-ZtImag)

