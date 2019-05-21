%% Second ordred edge detection
% Laplasian edge detection

clear all
close all
clc

I = imread('rice.png');

disp('Laplacian kernel:')
kernel = fspecial('laplacian') %create kernel for Laplasian

IE = imfilter(I, kernel, 'symmetric');
figure,
subplot(1,2,1); imagesc(I);
subplot(1,2,2); imagesc(IE);

