% Regionprops circle

clear all
close all
clc

I = imread('coins.png');
figure,
subplot(1,3,1); imshow(I);
bw = im2bw(I,87/255);
subplot(1,3,2); imshow(bw);
se = strel('disk',2);
bw = imclose(bw,se);
subplot(1,3,3); imshow(bw);

stats = regionprops('table',bw,'Centroid',...
    'MajorAxisLength','MinorAxisLength')

centers= stats.Centroid;
diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
radii = diameters/2;

figure,
imshow(I);
hold on;
viscircles(centers,radii);
hold off;

n = size(stats);
major = stats.MajorAxisLength;
minor = stats.MinorAxisLength;
for i = 1:n(1)
   
    diameter = mean([major(i) minor(i)],2);
    if (diameter > 10)
       new_stats(i,:) = stats(i,:); 
    end  
end

centers= new_stats.Centroid;
diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
radii = diameters/2;

figure,
imshow(I);
hold on;
viscircles(centers,radii);
hold off;