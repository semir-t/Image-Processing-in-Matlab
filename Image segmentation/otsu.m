%% Otsu method

close all
clear all
clc

I = imread('coins.png');
figure,
imhist(I);
figure,
subplot(1,3,1); imshow(I);
subplot(1,3,2); im2bw(I,100/255);
thresh = graythresh(I); % Find threshold value using Otsu method
subplot(1,3,3); im2bw(I,thresh);