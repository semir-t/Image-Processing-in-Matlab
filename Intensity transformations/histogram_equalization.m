%% Histogram equalization
close all
clear all
clc

I = imread('pout.tif');
Ieq = histeq(I);

figure,
subplot(2,2,1); imshow(I);
subplot(2,2,2); imshow(Ieq);
subplot(2,2,3); imhist(I);
subplot(2,2,4); imhist(Ieq);

I = rgb2gray(imread('../images/head1.jpg'));
Ieq = histeq(I);

figure,
subplot(2,2,1); imshow(I);
subplot(2,2,2); imshow(Ieq);
subplot(2,2,3); imhist(I);
subplot(2,2,4); imhist(Ieq);