%% Binary image operation - opening by reconstruction


close all
clear all
clc

% Read binary image
mask = ~imread('shakespeare.pbm') 
% Removing interruptions between letters
mask = imclose(mask,ones(5));
% Defining vertical structural element
se = strel('line',40,90);
% Erosion of mask image
marker = imerode(mask,se):

% Image reconstruction
im = imreconstruction(marker,mask);

figure,
subplot(3,1,1); imshow(~mask); title('Original mask')
subplot(3,1,2); imshow(~marker); title('Original marker');
subplot(3,1,3); imshow(~im); title('Opening by reconstruction');
