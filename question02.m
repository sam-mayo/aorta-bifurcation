clear all
close all

f = 0:0.001:10;
parameters = load('question01parameters.mat');

%% Tube 1
E1tests = [ 9e6 8e6 7e6 6e6 5e6 ];
ZinCReal = cell(length(E1tests),1);
ZinCImag = cell(length(E1tests),1);
legendCell = cell(length(E1tests),1);

for k = 1:length(E1tests);
    parameters.E1 = E1tests(k);
    [ZinCReal{k},ZinCImag{k}] = ZvsF(f,parameters);
end

figure
subplot(2,1,1)
ylim([1 100])
hold on

for k = 1:length(E1tests);
    plot(f,ZinCReal{k})
    legendStrTemp = strcat(['E1 = ' sprintf('%.*e',1,E1tests(k)) ' ']);
    legendCell{k} = legendStrTemp;
end

title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend(legendCell)

subplot(2,1,2)
ylim([-2 2])
hold on

for k = 1:length(E1tests);
    plot(f,ZinCImag{k})
end
plot(f,zeros([1,length(f)]),'k--')

title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')
legend(legendCell)

parameters.E1 = 7e6;

%% Tube 2
E2tests = [ 8e6 7e6 6e6 5e6 4e6 ];
ZinCReal = cell(length(E2tests),1);
ZinCImag = cell(length(E2tests),1);
legendCell = cell(length(E2tests),1);

for k = 1:length(E2tests);
    parameters.E2 = E2tests(k);
    [ZinCReal{k},ZinCImag{k}] = ZvsF(f,parameters);
end

figure
subplot(2,1,1)
ylim([1 100])
hold on

for k = 1:length(E2tests);
    plot(f,ZinCReal{k})
    legendStrTemp = strcat(['E2 = ' sprintf('%.*e',1,E2tests(k)) ' ']);
    legendCell{k} = legendStrTemp;
end

title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend(legendCell)

subplot(2,1,2)
ylim([-2 2])
hold on

for k = 1:length(E2tests);
    plot(f,ZinCImag{k})
end
plot(f,zeros([1,length(f)]),'k--')

title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')
legend(legendCell)

parameters.E2 = 6e6;

%% Both Tubes
E1tests = [ 9e6 8e6 7e6 6e6 5e6 ];
E2tests = [ 9e6 8e6 7e6 6e6 5e6 ];
ZinCReal = cell(length(E1tests),1);
ZinCImag = cell(length(E1tests),1);
legendCell = cell(length(E1tests),1);

for k = 1:length(E1tests);
    parameters.E1 = E1tests(k);
    parameters.E2 = E2tests(k);
    [ZinCReal{k},ZinCImag{k}] = ZvsF(f,parameters);
end

figure
subplot(2,1,1)
ylim([1 100])
hold on

for k = 1:length(E1tests);
    plot(f,ZinCReal{k})
    legendStrTemp = strcat(['E1 = ' sprintf('%.*e',1,E1tests(k)) ', E2 = ' sprintf('%.*e',1,E2tests(k))]);
    legendCell{k} = legendStrTemp;
end

title('Modulus vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Modulus')
legend(legendCell)

subplot(2,1,2)
ylim([-2 2])
hold on

for k = 1:length(E1tests);
    plot(f,ZinCImag{k})
end
plot(f,zeros([1,length(f)]),'k--')

title('Phase vs. Frequency')
xlabel('Frequency (Hz)')
ylabel('Phase (radians)')
legend(legendCell)

parameters.E1 = 7e6;
parameters.E2 = 6e6;