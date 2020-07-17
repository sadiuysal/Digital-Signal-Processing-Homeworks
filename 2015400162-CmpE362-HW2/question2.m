f1 = 2000;% input signal freq1
f2 = 500;%input signal freq2
fs1=1500;fs2=6000;fs3=12000;%sample freq.s
T = 1/f2;
startT = 0;
endT = 3*T;  %take first 3 period duration
dt = 1/(f1*100);

dt1 = 1/fs1;
dt2 = 1/fs2;
dt3 = 1/fs3;
t = startT:dt:endT;
x = 5*sin(2*pi*f1*t)+10*sin(2*pi*f2*t);  %construct addition of two signal with diffrent freq.
t1 = startT:dt1:endT;           %sample with dif sample freq. fs1
x1 = 5*sin(2*pi*f1*t1)+10*sin(2*pi*f2*t1);
t2 = startT:dt2:endT;    %sample with dif sample freq. fs2
x2 = 5*sin(2*pi*f1*t2)+10*sin(2*pi*f2*t2);
t3 = startT:dt3:endT;    %sample with dif sample freq. fs2
x3 = 5*sin(2*pi*f1*t3)+10*sin(2*pi*f2*t3);
figure()  %plots
subplot(311)
plot(t,x,'r');
title(' Original Signal:  RED          Recovered Signal:  BLUE  ')
hold on
stem(t1,x1);
plot(t,iPolate(x1,t,dt,dt1),'b');
subplot(312)
plot(t,x,'r');
title('1: Undersampling   2: Empirical Nyquist rate   3: Oversampling    ');
hold on
stem(t2,x2);
plot(t,iPolate(x2,t,dt,dt2),'b');
subplot(313)
plot(t,x,'r');
hold on
stem(t3,x3);
plot(t,iPolate(x3,t,dt,dt3),'b');
function [Y]=iPolate(x,t,dt,dt_sample) %function to interpolate
Y = zeros(length(t));
for i=1:length(t)
for j=1:length(x)
Y(i)=Y(i) + x(j)*sinc(((i-1)*dt-(j-1)*dt_sample)/dt_sample);
end
end
end