% Edge emphasis
% Laplasian filter

clear all
close all
clc

I = imread('moon.tif');

disp('Laplacian kernel:')
kernel = fspecial('laplacian',0.8) %create kernel for Laplasian

I_f = imfilter(I, kernel, 'symmetric');
I_ee = imsubtract(I,I_f);

figure,
subplot(1,3,1); imshow(I);
subplot(1,3,2); imshow(I_f);
subplot(1,3,3); imshow(I_ee);

