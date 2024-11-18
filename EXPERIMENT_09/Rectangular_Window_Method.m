wc=0.5*pi;
N=input("enter the order:");
alpha=(N-1)/2;
window=boxcar(N)';
%transpose taken
n=0:1:N-1;
w=0:0.01:pi;
%rectangular window
subplot(321);
stem(0:1:N-1,window);
xlabel("index");
ylabel("Amplitude");
title("Rectangular window Method");
%low pass filter
hd_lp=(sin(wc*(n-alpha)))./(pi*(n-alpha));
hn=hd_lp.*window;
h_lp=freqz(hn,1,w);
subplot(323);
plot(w/pi,10*log10(abs(h_lp)));
xlabel("Normalized Frequency");
ylabel("Magnitude");
title("Low Pass Filter");
%high pass filter
hd_hp=(sin(pi*(n-alpha))-sin(wc*(n-alpha)))./(pi*(n-alpha));
hn=hd_hp.*window;
h_hp=freqz(hn,1,w);
subplot(324);
plot(w/pi,10*log10(abs(h_hp)));
xlabel("Normalized Frequency");
ylabel("Magnitude");
title("High Pass Filter");
%band pass filter
hd_bp=(sin(wc2*pi*(n-alpha))-sin(wc1*(n-alpha)))*wc./(pi*(n-alpha));
hn=hd_bs.*window;
h_bp=freqz(hn,1,w);
subplot(325);
plot(w/pi,10*log10(abs(h_bp)));
xlabel("Normalized Frequency");
ylabel("Magnitude");
title("Band Pass Filter");
%band stop filter
hd_bs=(sin(wc1*(n-alpha))-sin(wc2*(n-alpha))+sin(pi*(n-alpha)))./(pi*(n-alpha));
hn=hd_bs.*window;
h_bs=freqz(hn,1,w);
subplot(326);
plot(w/pi,10*log10(abs(h_bs)));
xlabel("Normalized Frequency");
ylabel("Magnitude");
title("Band Stop Filter");