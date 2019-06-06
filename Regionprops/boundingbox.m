%% Bounding box

close all
clear all
clc

I = imread('speed_limit.jpg');

I_size = size(I);

threshold = 150;
bw = zeros(I_size(1),I_size(2));
for i = 1:I_size(1)
    for j = 1:I_size(2)
       pixel(1) = I(i,j,1);
       pixel(2) = I(i,j,2);
       pixel(3) = I(i,j,3);
       if ( abs(norm(double(pixel) - double([255 0 0]))) < threshold)
        bw(i,j) = 1;
       end
    end
end

figure,imshow(bw);

stats = regionprops('table',bw,'BoundingBox','Centroid',...
    'MajorAxisLength','MinorAxisLength')
figure,imshow(I);
rectangle('Position', stats.BoundingBox,...
            'EdgeColor','r','LineWidth',2 );