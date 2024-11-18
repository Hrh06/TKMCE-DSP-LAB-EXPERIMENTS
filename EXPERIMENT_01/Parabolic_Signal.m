clear all;
close all;
n1=input("Enter starting point:");
n2=input("Enter end point:");
sample_points=-n1:1:n2;
amplitude1=[zeros(1,n1+1)]; 
for(i=1:n2) 
    amplitude2(i)=i^2;
end
amplitude2; 
amplitude=[amplitude1, amplitude2];
subplot(121)
plot(sample_points, amplitude);
xlabel("sample points");
ylabel("amplitude");
title("Parabolic");
grid on;
subplot(122)
stem(sample_points, amplitude);
xlabel("sample points");
ylabel("amplitude");
title("Parabolic"); 
grid on;