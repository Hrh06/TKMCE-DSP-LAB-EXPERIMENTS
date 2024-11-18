close all; 
clear all; 
n1=input('enter starting point:'); 
n2=input('enter end point:'); 
sample_points = -n1:1:n2; 
amplitude = [zeros(1,n1), 1,zeros(1,n2)]; 
% plotting the graph 
subplot(121); 
plot(sample_points, amplitude); 
xlabel('samples'); 
ylabel("amplitude"); 
title("Impulse response"); 
grid on;
subplot(122);
stem(sample_points,amplitude); 
xlabel('samples');
ylabel("amplitude"); 
title("Impulse response"); 
grid on;