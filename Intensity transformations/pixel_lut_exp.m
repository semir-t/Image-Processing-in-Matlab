%% Chaning pixel value using LUT

clear all
close all
clc

I = imread('lighthouse.png');
figure,subplot(2,3,1);imshow(I);title('Original image');
subplot(2,3,2);rgb_histogram(I);title('Original histogram');

a = 1;
x = 0:255;
LUT = 255 ./ (1+exp(-a*(x-127)/32));
subplot(2,3,3); plot(LUT);title('Transformation funcion');
Im = pixel_transformation(I,LUT);

subplot(2,3,4); imshow(Im); title('Modified image');
subplot(2,3,5); rgb_histogram(Im); title('Modified histogram');

figure,
subplot(1,2,1); imshow(I); title('Original image');
subplot(1,2,2); imshow(Im); title('Modified image');