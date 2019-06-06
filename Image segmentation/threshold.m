%% Thershold - Manual selection

close all
clear all
clc

I = imread('coins.png');
figure,
imhist(I);
figure,
subplot(1,2,1); imshow(I);
subplot(1,2,2); im2bw(I,80/255);