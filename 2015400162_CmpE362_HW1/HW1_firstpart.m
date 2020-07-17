    %Problem 1
figure(1);
t=-2:0.01:2; %duration
%signals 
y1 = sin(2*pi*t);
y2= sin(2*pi*10*t);
y3=10*sin(2*pi*t);
y4= sin(2*pi*t)+10;
y5= sin(2*pi*(t- 0.5));
y6= 10*sin(2*pi*10*t);
y7= t.*sin(2*pi*t);  
y8= sin(2*pi*t)./t ;   
y9= y1+y2+y3+y4+y5+y6+y7+y8;  
%plots
subplot(5,2,1);
plot(t,y1,'r');
subplot(5,2,2);
plot(t,y2,'r');
subplot(5,2,3);
plot(t,y3,'r');
subplot(5,2,4);
plot(t,y4,'r');
subplot(5,2,5);
plot(t,y5,'r');
subplot(5,2,6);
plot(t,y6,'r');
subplot(5,2,7);
plot(t,y7,'r');
subplot(5,2,8);
plot(t,y8,'r');
subplot(5,2,9);
plot(t,y9,'r');
    %Problem 2
figure(2);
%signals 
z=0.1*randn(1,401);
y10= z;
y11 = z+t;
y12= z+y1;
y13= z.*y1;  
y14=t.*sin(2*pi*z);
y15= sin(2*pi*(t+z));
y16= z.*y2;  
y17= sin(2*pi*(t+10*z));
y18= y1./z;
y19= y11+y12+y13+y14+y15+y16+y17+y18;
%plots
subplot(5,2,1);
plot(t,y10,'r');
subplot(5,2,2);
plot(t,y11,'r');
subplot(5,2,3);
plot(t,y12,'r');
subplot(5,2,4);
plot(t,y13,'r');
subplot(5,2,5);
plot(t,y14,'r');
subplot(5,2,6);
plot(t,y15,'r');
subplot(5,2,7);
plot(t,y16,'r');
subplot(5,2,8);
plot(t,y17,'r');
subplot(5,2,9);
plot(t,y18,'r');
subplot(5,2,10);
plot(t,y19,'r');
    %Problem 3
figure(3);
%signals 
z=0.1*rand(1,401);
y20= z;
y21 = z+t ;
y22= z+y1;
y23= z.*y1; 
y24=t.*sin(2*pi*z); 
y25= sin(2*pi*(t+z));
y26= z.*y2; 
y27= sin(2*pi*(t+10*z));
y28=y1./z; 
y29=y21+y22+y23+y24+y25+y26+y27+y28;
%plots
subplot(5,2,1);
plot(t,y20,'r');
subplot(5,2,2);
plot(t,y21,'r');
subplot(5,2,3);
plot(t,y22,'r');
subplot(5,2,4);
plot(t,y23,'r');
subplot(5,2,5);
plot(t,y24,'r');
subplot(5,2,6);
plot(t,y25,'r');
subplot(5,2,7);
plot(t,y26,'r');
subplot(5,2,8);
plot(t,y27,'r');
subplot(5,2,9);
plot(t,y28,'r');
subplot(5,2,10);
plot(t,y29,'r');
    %Problem 4
figure(4);    %Gaussian(Normal) Random variables
r1 = sqrt(1).*randn(5000,1) + 0; %variance 1 and mean 0
r2 = sqrt(8).*randn(5000,1) + 0; %variance 8 and mean 0
r3 = sqrt(64).*randn(5000,1) + 0; %variance 64 and mean 0
r4 = sqrt(256).*randn(5000,1) + 0; %variance 256 and mean 0
subplot(1,4,1);
hist(r1);
subplot(1,4,2);
hist(r2);
subplot(1,4,3);
hist(r3);
subplot(1,4,4);
hist(r4);
    %Problem 5
figure(5);    %Gaussian(Normal) Random variables
r5 = sqrt(1).*randn(5000,1) + 10; %variance 1 and mean 10
r6 = sqrt(4).*randn(5000,1) + 20; %variance 4 and mean 20
r7 = sqrt(1).*randn(5000,1) - 10; %variance 1 and mean -10
r8 = sqrt(4).*randn(5000,1) - 20; %variance 4 and mean -20
subplot(1,4,1);
hist(r5);
subplot(1,4,2);
hist(r6);
subplot(1,4,3);
hist(r7);
subplot(1,4,4);
hist(r8);
    %Problem 6
figure(6);     %uniformly distributed random variables
r11=randi([-4 4],1,5000); %between -4 and 4 
r21=randi([-20 20],1,5000); %between -20 and 20
subplot(1,2,1);
hist(r11);
subplot(1,2,2);
hist(r21);




