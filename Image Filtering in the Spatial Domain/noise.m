%% Adding noise to the image


clear all
close all
clc

I = imread('cameraman.tif');            % Input image

Isp = imnoise(I,'salt & pepper', 0.03); % Add Salt&Pepper noise 
Ig = imnoise(I,'gaussian',0.02);        % Add Gaussian noise

figure,                                 % Show orginal image and image 
                                        % with noise
subplot(1,3,1); imshow(I);              
subplot(1,3,2); imshow(Isp);
subplot(1,3,3); imshow(Ig);