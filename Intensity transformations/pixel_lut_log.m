%% Chaning pixel value using LUT
% Pixels with lower levels are mapped to higher values and 
% pixels with high levels are compressed. ( Can be seen on the
% transforamtion function.
% Because of this, image will be lighter.

clear all
close all
clc

I = imread('cameraman.tif');
figure,subplot(2,3,1);imshow(I);title('Original image');
subplot(2,3,2);imhist(I);title('Original histogram');

a = 50;
x = 0:255;
LUT = a*log(1+x);
subplot(2,3,3); plot(LUT);title('Transformation funcion');
Im = pixel_transformation(I,LUT);

subplot(2,3,4); imshow(Im); title('Modified image');
subplot(2,3,5); imhist(Im); title('Modified histogram');

figure,
subplot(1,2,1); imshow(I); title('Original image');
subplot(1,2,2); imshow(Im); title('Modified image');