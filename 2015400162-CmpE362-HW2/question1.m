
T = 10*(1/25);
fs = 1000; %sample freq
t = 0:1/fs:T-1/fs;
x = sawtooth(2*pi*25*t,1/2); %sawtooth func
y = fft(x);
n = length(x);          % number of samples
y0 = fftshift(y);         % shift y values
f0 = (-n/2:n/2-1)*(fs/n); % 0-centered frequency range
power0 = abs(y0).^2/n;    % 0-centered power
subplot(3, 1, 1);
plot(f0,power0);
xlabel('Frequency');
ylabel('Power');
ffund=25 % fund freq.
%1 to 11 harmonics
j = sqrt(-1);
x1=(-2/(pi^2)).*cos(2.*pi.*ffund.*t)+(2/(pi*1)).*j*sin(2.*pi.*ffund.*t);
x3=(-2/(pi^2*9)).*cos(2.*pi.*ffund*3.*t)+(2/(pi*3)).*j*sin(2.*pi.*ffund*3.*t);
x5=(-2/(pi^2*9)).*cos(2.*pi.*ffund*5.*t)+(2/(pi*5)).*j*sin(2.*pi.*ffund*5.*t);
x7=(-2/(pi^2*9)).*cos(2.*pi.*ffund*7.*t)+(2/(pi*7)).*j*sin(2.*pi.*ffund*7.*t);
x9=(-2/(pi^2*9)).*cos(2.*pi.*ffund*9.*t)+(2/(pi*9)).*j*sin(2.*pi.*ffund*9.*t);
x11=(-2/(pi^2*9)).*cos(2.*pi.*ffund*11.*t)+(2/(pi*11)).*j*sin(2.*pi.*ffund*11.*t);
first=0.5+x1+x3; %first part
second=0.5+x1+x3+x5+x7+x9+x11; %second part
%plots
subplot(3, 1, 2);
plot(t,first);
subplot(3, 1, 3);
plot(t,second);
