Ts = 1/50;                         %Sampling Period
t = 0:Ts:10-Ts;                    %time domain abscissa (x-axis) variable
x = sin(2*pi*15*t);               %time domain ordinate (y-axis) variable

plot(t,x);                         %plotting the sine wave with freq=0.4 Hz
xlabel("Time(sec)");
ylabel("amplitude");

Fs=1/Ts;                            %sampling frequency
y=fft(x);                           %taking dft of sine wave. 
%Note: FFT is an algorithm for efficient implementation of DFT
f=((0:(length(y)-1))*Fs)/(length(y));   %array for frequency on x-axis of FT Plot

plot(f,abs(y));                          %plotting freq v/s magnitude plot of Fourier Transform
xlabel("Freq (Hz)");
ylabel("Magnitude");
title("Fourier Transform Plot");
%this plot is also an example of aliasing freq where (Fs/2) is the folding
%freq. freq above folding freq get aliased as lower frequency with a phase
%shift of 180 degrees. Whereas freq below folding freq are retained as it
%is without any phase shift