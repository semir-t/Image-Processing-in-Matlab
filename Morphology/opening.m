%% Binary image operation - opening
%% erosion -> dilatation == opening

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

% Apply erosion
bw1 = imerode(bw,se);
% Apply dilatation
bw2 = imdilate(bw1,se);

% Opening operation in matlab
bw3 = imopen(bw,se);

% Show image

figure,
subplot(1,3,1); imshow(bw); title('Original binary image');
subplot(1,3,2); imshow(bw2); title('Erosion and Dilatation');
subplot(1,3,3); imshow(bw3); title('imopen() function');
