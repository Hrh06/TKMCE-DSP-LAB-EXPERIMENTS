clc;
clear all;
close all;
disp('3. Time Reversal Property')
clear all;
x1=input('Enter the sequence : ');
N=length(x1);
y1=DFT(x1);
n=1:N-1;
x2(1)=x1(1);
x2(n+1)=x1(N-(n-1));
y2=DFT(x2);
y(1)=y1(1);
y(n+1)=y1(N-(n-1));
disp('DFT of x(n) : ');
disp(y1');
disp('DFT of x(N-n) : ');
disp(y2');
disp('DFT of x(N-n) by property : ');
disp(y');
if (abs(y-y2)<10^(-10))
    disp('Time reversal property of DFT is verified');
else
    disp('Time reversal property of DFT is not verified');
end

function x=DFT(x)
    N=length(x);
    X=zeros(1,N);
    for k=1:N
        for n=1:N
            X(k)=X(k)+x(n)*exp(-(2*j*pi*(n-1)*(k-1))/N);
        end
    end
end