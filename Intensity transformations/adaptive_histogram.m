%% Histogram equalization on smaller parts of the image (Tiles)
close all
clear all
clc

I = rgb2gray(imread('../images/head1.jpg'));
Ieq = histeq(I);
Iad = adapthisteq(I);

figure,
subplot(2,3,1); imshow(I);
subplot(2,3,2); imshow(Ieq);
subplot(2,3,3); imshow(Iad);
subplot(2,3,4); imhist(I);
subplot(2,3,5); imhist(Ieq);
subplot(2,3,6); imhist(Iad);