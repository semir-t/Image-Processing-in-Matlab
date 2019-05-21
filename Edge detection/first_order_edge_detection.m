%% First ordred edge detection
% Roberts, Prewitt and Sobel edge detection

clear all
close all
clc

I = imread('rice.png');

figure,
subplot(2,2,1); imshow(I); title('Original image');

I_er = edge(I,'roberts');
I_ep = edge(I,'prewitt');
I_es = edge(I,'sobel');

subplot(2,2,2); imshow(I_er); title('Roberts');
subplot(2,2,3); imshow(I_ep); title('Prewitt');
subplot(2,2,4); imshow(I_es); title('Sobel');

figure, imshow(I_er); title('Roberts');
figure, imshow(I_ep); title('Prewitt');
figure, imshow(I_es); title('Sobel');