%Code to generate DSB-SC wave using non-linear DSB-SC modulator(singly
%balanced)

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

figure(1);
%cos wave with time duration 't'

y_m=Am*(cos(2*pi*fm*t));
plot(t,y_m,'blue');
title("Message Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

figure(2);
%Carrier signal

%cos wave with time duration 't'
y_c=Ac*(cos(2*pi*fc*t));
plot(t,y_c,'red');
title("Carrier Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

figure(3);
%DSB-SC Modulation

dsbsc_amplitude=y_m.*y_c;
plot(t,dsbsc_amplitude,'green');
title("DSB-SC Signal");
xlabel("Time(sec)");
ylabel("Amplitude");
grid();

% Reference:
% https://github.com/Saptarshi-prog/DSBSC-simulation-by-MATLAB/tree/master