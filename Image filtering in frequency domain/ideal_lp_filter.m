% Ideal LP filter

close all
clear all
clc 

% Read image and calculate FFT
I = imread('cameraman.tif');
F = fftshift(fft2(I));
Fa = abs(F);
Flog = log(1+Fa);
Fmax = max(Flog(:));
figure,
subplot(1,2,1); imshow(I); title('Original image');
subplot(1,2,2); imshow(im2uint8(Flog/Fmax),[]); title(' FFT of original image');

% Create ideal LP filter
[x,y] = meshgrid (-128:127,-128:127);
z = sqrt(x.^2 + y.^2);
c = z < 20;

% Pass image through filter in frequnecy domain

F_filtered = F .* c;

% Restore filtered image
figure,
subplot(1,3,1); imshow(im2uint8(Flog/Fmax),[]);
subplot(1,3,2); imshow(c,[]);

F_inv = ifft2(F_filtered);
F_ia = abs(F_inv);
F_iam = max(F_ia(:));
subplot(1,3,3); imshow(F_ia/F_iam);

