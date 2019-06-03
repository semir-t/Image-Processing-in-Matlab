%% Binary image operation - closing
%% dilatation -> erosion == closing

close all
clear all
clc

% Read image
I = imread('coins.png'); 

% Transform grayscale image to binary image
bw = im2bw(I,graythresh(I));

figure, imshow(bw); title('Binary image');

% Definition of structural element
se = strel('disk',3);

% Apply dilatation
bw1 = imdilate(bw,se);
% Apply erosion
bw2 = imerode(bw1,se);

% Closing operation in matlab
bw3 = imclose(bw,se);

% Show image

figure,
subplot(1,3,1); imshow(bw); title('Original binary image');
subplot(1,3,2); imshow(bw2); title('Dilatation and Erosion');
subplot(1,3,3); imshow(bw3); title('imclose() function');
