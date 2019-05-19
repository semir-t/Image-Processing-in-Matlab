%% Gaussian filter in spatial domain

clear all
close all
clc

I = imread('cameraman.tif');            % Input image

Isp = imnoise(I,'salt & pepper', 0.03); % Add Salt&Pepper noise 
Ig = imnoise(I,'gaussian',0.02);        % Add Gaussian noise

figure,                                 % Show orginal image and image 
                                        % with noise
subplot(2,3,1); imshow(I); title('Original image');              
subplot(2,3,2); imshow(Isp); title ('S&P noise');
subplot(2,3,3); imshow(Ig); title ('Gaussian noise');

%Define kernel for Gaussian filter
kernel = fspecial('gaussian',[5 5],2)         
Im = imfilter(I,kernel);     % Gaussian filter on the original image
Ispm = imfilter(Isp,kernel); % Gaussian filter on image with salt&pepper noise
Igm = imfilter(Ig,kernel);   % Gaussian filter on image with Gaussian noise

%Show filtered images                          
subplot(2,3,4); imshow(Im);              
subplot(2,3,5); imshow(Ispm);
subplot(2,3,6); imshow(Igm);