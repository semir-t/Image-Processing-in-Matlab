%% BW label example

clear all
close all
clc

I = imread('coins.png');
figure,
subplot(1,3,1); imshow(I);
bw = im2bw(I,87/255);
subplot(1,3,2); imshow(bw);
se = strel('disk',2);
bw = imclose(bw,se);
subplot(1,3,3); imshow(bw);

L = bwlabel(bw,8);
figure,imshow(label2rgb(L));