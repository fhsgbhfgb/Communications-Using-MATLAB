clc;
close all;
clear all;

Ts = 1/50;                        %Sampling Period
t = 0:Ts:10-Ts;                   %time domain abscissa (x-axis) variable
x = sin(2*pi*35*t);               %time domain ordinate (y-axis) variable
N=length(x);
%here 'N' value should always be greater than no. of samples of signal(sine
%wave here). Here size of sine wave is (1X500). So 'N" should be greater
%than that (preferrably in multiples of 2^(n) to prevent undersampling)

figure(1);
plot(t,x);                        %plotting the sine wave
xlabel("Time(sec)");
ylabel("Amplitude");

Fs=1/Ts;                          %sampling frequency
y=fft(x,N);                       %taking dft of sine wave. 
%Note: FFT is an algorithm for efficient implementation of DFT
f=((0:(N-1))*Fs)/(N);             %array for frequency on x-axis of FT Plot

figure(2);
plot(f,(1/N)*abs(y));             %plotting normalized freq v/s magnitude plot of Fourier Transform
xlabel("Frequency (Hz)");
ylabel("Magnitude (abs(voltage))");
title("Fourier Transform Plot");

%this plot is also an example of aliasing freq where (Fs/2) is the folding
%freq. freq above folding freq get aliased as lower frequency with a phase
%shift of 180 degrees. Whereas freq below folding freq are retained as it
%is without any phase shift

%Implementing Parseval's Theorem
energy_time_domain=sum((abs(x).^2),"all")
energy_frequency_domain=(sum((abs(y).^2),"all"))/length(y)
