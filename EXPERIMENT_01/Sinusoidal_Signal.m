close all;
clear all;
amplitude=input("enter the amplitude: ");
fr=input("enter the frequency: ");
cycles=input("enter the cycles: ");
t=0:(1/(50*fr)):(cycles/fr);
amplitudes=amplitude*sin(2*pi*fr*t);
subplot(121)
plot(t,amplitudes);
xlabel("sample points");
ylabel("amplitude");
title("Sine");
grid on;
subplot(122)
stem(t,amplitudes);
xlabel("sample points");
ylabel("amplitude");
title("Sine");
grid on;