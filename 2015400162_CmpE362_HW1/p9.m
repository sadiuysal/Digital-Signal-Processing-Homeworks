rgb = imread('lena.png');
A = rgb2gray(rgb);
M = mean2(A);
disp("Mean:");
disp(M)
S = std2(A);
disp("Std:");
disp(S)
maximum = max(max(A));
disp("max:");
disp(maximum)
[x,y]=find(A==maximum);
disp("max loc");
disp([x,y])
minimum = min(min(A));
disp("min:");
disp(minimum)
[x,y]=find(A==minimum);
disp("min loc");
disp([x,y])