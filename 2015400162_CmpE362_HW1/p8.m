[data, fs] = audioread('g.m4a');
signal = data(:,1);
data_fft = fft(data);
y0 = fftshift(data_fft);
plot(psd(spectrum.periodogram,signal,'Fs',fs,'NFFT',length(signal)));

%figure(1);
%plot(abs(data_fft(:,1)));
%figure(2);
%plot(abs(y0(:,1)));