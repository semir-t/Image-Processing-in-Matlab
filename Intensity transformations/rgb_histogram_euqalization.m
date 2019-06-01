%% Histogram equalization for color image.
close all
clear all
clc

%I = imread('autumn.tif');
I = imread('../images/cat00.jpg');
Ihsv = rgb2hsv(I);
V = adapthisteq(Ihsv(:,:,3));
Ihsv(:,:,3) = V;
Iout = hsv2rgb(Ihsv);
figure,
subplot(1,3,1); imshow(I);
subplot(1,3,2); imshow(Ihsv(:,:,3));
subplot(1,3,3); imshow(V);
figure,
subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(Iout);