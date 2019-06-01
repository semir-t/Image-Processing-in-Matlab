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
subplot(1,2,1); imshow(tp,[]);
tpf = fftshift(fft2(tp));

%Notch filter
tpf(156,:) = 0;
tpf(102,:) = 0;
tpf(:,170) = 0;
tpf(:, 88) = 0;
tf = ifft2(tpf);
subplot(1,2,1), imshow(tp); title('Image with noise before filtering');
subplot(1,2,2),imshow(abs(tf)); title('Image with noise after filtergin'); 