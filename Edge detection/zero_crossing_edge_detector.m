%% zero-crossing edge detection
% LoG filter

clear all
close all
clc

I = imread('rice.png');

disp('LoG kernel:')
kernel = fspecial('log',[7 7],3) %create kernel for Laplasian

IE = imfilter(I, kernel, 'symmetric');
figure,
subplot(1,2,1); imagesc(I);
subplot(1,2,2); imagesc(IE);
colormap('gray');