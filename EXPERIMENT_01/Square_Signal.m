clc;
clf;
close all;
clear all;
am=input('Enter amplitude: ');
fm=input('Enter frequency: ');
cyc=input('Enter no: of Cycles: ');
t=0:(1/(50*fm)):(cyc/fm);
amp=am*square(2*pi*fm*t);
subplot(211);
plot(t,amp);
grid on;
xlabel('Samples');
ylabel('Amplitude');
subplot(212);
stem(t,amp);
grid on;
xlabel('Samples');
ylabel('Amplitude');