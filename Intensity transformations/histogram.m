%% Histogram calculation

clear all
close all
clc

I = imread('cameraman.tif');
figure, imshow(I);

%Calculating histogram
[m,n] = size(I);

for i=1:256
     h(i) = 0;
end

for i = 1:m
    for j = 1:n
        x = I(i,j);
        h(x + 1) = h(x+1) + 1;
    end
end

figure,
subplot(1,3,1); imshow(I); title('Orginal image');
subplot(1,3,2); bar(h); title('Calculated histogram');
imh = imhist(I);
subplot(1,3,3); imhist(I); title('Matlab histogram');
ylim([0,1800]);