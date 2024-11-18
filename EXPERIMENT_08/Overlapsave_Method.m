%Overlap Save Method clc; clear all;
close all;
x= input('Enter the first sequence: ');
h= input('Enter the second sequence: ');
xl= length(x);
hl= length(h);
N=xl+hl-1;
h=[h, zeros(1,N-xl)];
hl1=length(hl);
x= [zeros(1,hl-1) x zeros(1,hl)];
y=[];
for (i=1:hl:xl+hl-1)
    x1=x(i:i+2*(hl-1));
    s1=convfft(x1,h);
    y=[y,s1(hl:end)];
end
y = y(1:N);
disp(y');
function h= convfft(x,y);
    n1= length(x);
    n2= length(y);
    dx= fft(x);
    dy= fft(y);
    mul= dx.*dy;
    h= ifft(mul);
end