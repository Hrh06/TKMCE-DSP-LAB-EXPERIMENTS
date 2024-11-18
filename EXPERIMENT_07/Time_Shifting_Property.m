clc;
clear all;
close all;
disp('4. Time Shifting Property')
clear all;
x1=input('Enter the sequence : ');
m=input('Enter the shift m : ');
N=length(x1);
y1=DFT(x1);
x2=circshift(x1',m);
y2=DFT(x2);
for (k=1:N)
    y(k)=y1(k)*exp(-1i*2*pi*(k-1)*m/N);
end
disp('DFT of x(n) : ');
disp(y1');
disp('DFT of x(n-m) by direct method : ');
disp(y2');
disp('DFT of x(n-m) by property : ');
disp(y');
if (abs(y-y2)<10^(-10))
    disp('Time shifting property of DFT is verified');
else
    disp('Time shifting property of DFT is not verified');
end

function X=DFT(x)
    N=length(x);
    X=zeros(1,N);
    for k=1:N
        for n=1:N
            X(k)=X(k)+x(n)*exp((-2j*pi*(n-1)*(k-1))/N);
        end
    end
end
