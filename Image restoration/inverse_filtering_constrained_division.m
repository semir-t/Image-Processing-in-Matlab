%% Inverse filtering constrained division

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
d = 0.01;
b(find(b<d)) = 1;
t1 = fftshift(fft2(tba))./b;
t1a = abs(ifft2(tq));
figure,
subplot(2,2,1);imshow(mat2gray(ta1));
d = 0.005;
b(find(b<d)) = 1;
t1 = fftshift(fft2(tba))./b;
t1a = abs(ifft2(tq));
subplot(2,2,2);imshow(mat2gray(ta1));
d = 0.002;
b(find(b<d)) = 1;
t1 = fftshift(fft2(tba))./b;
t1a = abs(ifft2(tq));
subplot(2,2,3);imshow(mat2gray(ta1));
d = 0.001;
b(find(b<d)) = 1;
t1 = fftshift(fft2(tba))./b;
t1a = abs(ifft2(tq));
subplot(2,2,4);imshow(mat2gray(ta1));