clc;
clear all;
close all;
disp('8. Parseval’s Theorem');
x=input('Enter the sequence : ');
N=length(x);
y=dft(x);
X=sum((abs(x)).^2);
Y=sum((abs(y)).^2)/N;
disp('DFT of x : ');
disp(y');
disp('Sum of |x|^2 : ');
disp(X);
disp('1/N * Sum of |DFT(x)|^2 : ');
disp(Y);
if (X==Y)
disp('Parseval’s Theorem of DFT is verified');
else
disp('Parseval’s Theorem of DFT is not verified');
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