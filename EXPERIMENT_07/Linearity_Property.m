clc;
clear all;
close all;
disp('2. Linearity Property')
clear all;
x1=input('Enter the 1st sequence : ');
x2=input('Enter the 2nd sequence : ');
a=input('Enter 1st scalar value a : ');
b=input('Enter 2nd scalar value b : ');
y1=DFT(x1);
y2=DFT(x2);
Y1=(DFT(a*x1+b*x2))'
Y2=(a*y1+b*y2)'
if (abs(Y1-Y2)<10^(-10))
    disp('Linearity property of DFT is verified');
else
    disp('Linearity property of DFT is not verified');
end


function X=DFT(x)
    N=length(x);
    X=zeros(1,N);
    for k=1:N
        for n=1:N
           X(k)=X(k)+x(n)*exp(-(2*j*pi*(n-1)*(k-1)/N));
        end
    end
end