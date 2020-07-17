%audio file to fiter
filename='noisy_testset_wav/p232_097.wav'; 

%Get filter from this sample
freRes=getFilter('clean_testset_wav/p232_099.wav','noisy_testset_wav/p232_099.wav');

fLength=length(freRes);
freRes=freRes(1:fLength);
tRes=ifft(freRes);
[dataNoisy, fsN] = audioread(filename);
dLength=length(dataNoisy);
minLen=min(dLength,fLength);  %find minimum of filter and data
result=filterSound(dataNoisy,tRes(1:minLen));
%sound(result,fsN);
fileResult='clean.wav';
audiowrite(fileResult,result,fsN);

  


function [Y]=getFilter(filename1,filename2)

[dataClean, fsC] = audioread(filename1);
[dataNoisy, fsN] = audioread(filename2);
dF = fsC/length(dataClean);                      % hertz
f = -fsC/2:dF:fsC/2-dF; 
 %%Plot the spectrum:
  figure;
 plot(f,dataClean);
 xlabel('Frequency (in hertz)');
 ylabel('Magnitude Response');
 figure;
 plot(f,dataNoisy);
 xlabel('Frequency (in hertz)');
 ylabel('Magnitude Response');
data_fft_c = (fft(dataClean));
data_fft_n = (fft(dataNoisy));
Y=data_fft_c./data_fft_n;
end

function [result]=filterSound(dataNoisy,tRes)
result=cconv(dataNoisy,tRes,length(dataNoisy));
end




  