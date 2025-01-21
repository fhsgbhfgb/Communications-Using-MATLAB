clear all;

%carrier signal amplitude
Ac=input("Enter amplitude of carrier signal: ");;

%Message signal amplitude
Am=input("Enter amplitude of message signal: ");

%Modulation Index in %age
h=Am/Ac;

%Message signal freq
fm=input("Enter frequency of message signal (in Hz): ");

%carrier signal freq
fc=input("Enter frequency of carrier signal (in Hz): ");

%sampling freq
fs=5000;

%time duration
t=0:(1/fs):1;

%amplitude modulation
%syntax of amplitude modulation function 'ammod()' as follows:
%   y=ammod(x,fc,fs,initial_phase,carrier_signal_amplitude)
%   where, x=amplitude signal
%   fc=carrier signal frequency
%   fs=sampling frequency
%   initial_phase= initial phase of modulated signal 'y' in radians
%   carrier_signal_amplitude= carrier amplitude of modulated signal
%   This function returns the amplitude modulated(AM) sign
%Message signal

figure(1);
%cos wave with time duration 't'

y_m=Am*(cos(2*pi*fm*t));
plot(t,y_m);
title("Message Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

figure(2);
%Carrier signal

%cos wave with time duration 't'
y_c=Ac*(cos(2*pi*fc*t));
plot(t,y_c);
title("Carrier Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

figure(3);
%Amplitude Modulated signal

y_am=ammod(y_m,fc,fs,0,Ac);
plot(t,y_am);
title("Amplitude Modulated Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

figure(4);
%Amplitude demodulated signal

y_dm=amdemod(y_am,fc,fs,0,Ac);
plot(t,y_am);
title("Amplitude Demodulated Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();