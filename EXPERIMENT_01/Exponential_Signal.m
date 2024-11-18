close all;
clear all;
am=input("enter amplitude");
N=input("Enter no of samples:");
dec_factor=input("Enter decay factor:");
samples=0:1:N-1;
subplot(121);
amplitudes=am*exp(-dec_factor*samples);
plot(samples,amplitudes);
xlabel("sample points");
ylabel("amplitude");
title("Exponent");
grid on;
subplot(122);
stem(samples,amplitudes);
title("Exponent");
xlabel("sample points");
ylabel("amplitude");
