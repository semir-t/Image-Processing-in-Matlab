%% Inverse filtering and low pass filter

close all
clear all
clc

% Read image
I = imread('cameraman.tif');

% Creating distorzion on the image
tf = fftshift(fft2(I));
b = lbutterworth(t,15,2);
tb = tf .* b;
tba = abs(ifft2(tb));
tba = uint8(255*mat2gray(tba));
figure;imshow(tba)

% Image reconstruction
tbf = fftshift(fft2(tba));
t1 = (tbf./b).*lbutterworth(40,10);
tla = abs(ifft2(t1));
figure,
subplot(2,2,1);imshow(mat2gray(tla));
t1 = (tbf./b).*lbutterworth(60,10);
tla = abs(ifft2(t1));
subplot(2,2,2);imshow(mat2gray(tla));
t1 = (tbf./b).*lbutterworth(80,10);
tla = abs(ifft2(t1));
subplot(2,2,3);imshow(mat2gray(tla));
t1 = (tbf./b).*lbutterworth(100,10);
tla = abs(ifft2(t1));
subplot(2,2,4);imshow(mat2gray(tla));