%% Thershold - Manual selection

close all
clear all
clc

I = imread('coins.png');
%figure,
%imhist(I);
%figure,
%subplot(2,2,1); imshow(I);
%subplot(2,2,2); im2bw(I,100/255);

[counts,X] = imhist(I); %Calculate histogram of the image
P = polyfit(X,counts,6); % Approximate histogram wiht polynomial function
Y = polyval(P,X); %Calculate value of hte polynomial function for each X

figure,
imhist(I);
hold on
plot(Y);
hold off

%Determine threshold value by determining minimum value of polynomial 
% funcion
[V,ind] = sort(abs(diff(Y)));
thresh = ind(3)./255;

figure,
subplot(1,3,1); imshow(I);
subplot(1,3,2); im2bw(I,100/255);
subplot(1,3,3); im2bw(I,thresh);