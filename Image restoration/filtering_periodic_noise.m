%% Filtering periodic noise

close all
clear all
clc

% Read image
I = imread('cameraman.tif');
[x,y] = meshgrid(1:256,1:256);
p = 1+sin(x+y/1.5);
tp = (double(I)/128 + p)/ 4;

figure,
subplot(1,2,1); imshow(tp,[]);
tpf = fftshift(fft2(tp));
f = log(1+abs(tpf));
subplot(1,2,2); imshow(f,[]);

z = sqrt((x-129).^2 + (y - 129).^2);
br = (z < 47 | z > 51);
tbr = tpf .* br;
tf = ifft2(tbr);
figure,
subplot(1,2,1), imshow(tp); title('Image with noise before filtering');
subplot(1,2,2),imshow(abs(tf)); title('Image with noise after filtergin'); 