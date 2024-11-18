clc;
clear all;
close all;
disp('7. Multiplication (Modulation) property');
x1=input('Enter the 1st sequence : ');
x2=input('Enter the 2nd sequence : ');
N=length(x1);
M=length(x2);
x1=[x1 zeros(1,M-N)];
x2=[x2 zeros(1,N-M)];
x=x1.*x2;
y1=DFT(x1);
y2=DFT(x2);
y=cconv(y1,y2,max(N,M))/N;
Y=DFT(x);
disp('DFT of x1 : ');
disp(y1');
disp('DFT of x2 : ');
disp(y2');
disp('DFT of multiplication of x1 and x2 : ');
disp(Y');
disp('DFT of multiplication of x1 and x2 by property : ');
disp(y');
if (abs(y-Y)<10^(-10))
    disp('Multiplication property of DFT is verified');
else
    disp('Multiplication property of DFT is not verified');
end

function X=DFT(x)
    N=length(x);
    X=zeros(1,N);
    for k=1:N
        for n=1:N
            X(k)=X(k)+x(n)*exp(-(2j*pi*(n-1)*(k-1)/N));
        end
    end
end