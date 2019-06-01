%% Dilatation on binary image

close all
clear all
clc

% Read image
I = imread('nodules1.tif') 

% Transform grayscale image to binary image
bw = im2bw(I,graythresh(I));

figure, imshow(bw); title('Binary image');

% Definition of structural element
se = [0 1 0; 1 1 1; 0 1 0];

% Apply structural element to binary image
bwout = imdilate(bw,se);

% Show image

figure,
subplot(1,2,1); imshow(bw); title('Original binary image');
subplot(1,2,2); imshow(bwout); title('Binary image after dilatation');
