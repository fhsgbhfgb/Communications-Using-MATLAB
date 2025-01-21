%Code to plot a cosine wave and it's FFT

clc;

 syms t w
 cos_wave_freq=linspace((-pi/8),(pi/8));
 f=5+cos(2*pi*cos_wave_freq*t);

 figure(1);
 fplot(f);
 title("Cosine wave with DC Offset");
 xlabel("time");
 ylabel("amplitude");
 grid;
 
 fs=5000;
 ly=length(f_FT);
 freq_axis = (((-ly/2:ly/2)-1)/ly)*fs;
 f_FT = fourier(f);

 figure(2);
 fplot(f_FT);
 title(" FFT of Cosine Wave");
 xlabel("frequency");
 ylabel("magnitude");
 grid;

 %shifting the obtained transform
 shifted_fft=fftshift(f_FT);

 %plotting the shifted transform
 figure(3);
 fplot(shifted_fft);
 title("Shifted FFT of Cosine Wave");
 xlabel("frequency");
 ylabel("magnitude");
 grid;



