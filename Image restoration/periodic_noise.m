%% Image restoration - Periodic noise


close all
clear all
clc

% Read image
I = imread('cameraman.tif');
[x,y] = meshgrid(1:256,1:256);
p = 1+sin(x+y/1.5);
tp = (double(I)/128 + p)/ 4;

figure,
subplot(1,3,1); imshow(tp,[]); title('Image with periodic noise');
If = fftshift(fft2(I));
Ifs = log(1+abs(If));
subplot(1,3,2); imshow(Ifs,[]); title('FFT of the image without the noise');
tpf = fftshift(fft2(tp));
f = log(1+abs(tpf));
subplot(1,3,3); imshow(f,[]); title('FTT of the image with noise');