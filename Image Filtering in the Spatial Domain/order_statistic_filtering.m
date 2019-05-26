%% Order filter in spatial domain

clear all
close all
clc

I = imread('cameraman.tif');            % Input image

Isp = imnoise(I,'salt & pepper', 0.03); % Add Salt&Pepper noise 
Ig = imnoise(I,'gaussian',0.02);        % Add Gaussian noise


%define size of the neighborhood
neighborhood = [3 3];
%define filters
filter = [1 round((neighborhood(1) * neighborhood(2))/2) (neighborhood(1) * neighborhood(2))];
%[ min_filter median_filter max_filter]
for i = 1:1:3
    f = figure;                          
    switch i
        case 1 
            f.Name = 'Min filter';     
        case 2 
            f.Name = 'Median filter';
        case 3 
            f.Name = 'Max filter';
    end
    subplot(2,3,1); imshow(I); title('Original image');              
    subplot(2,3,2); imshow(Isp); title ('S&P noise');
    subplot(2,3,3); imshow(Ig); title ('Gaussian noise');
    
    Im = ordfilt2(I,filter(i),ones(neighborhood));     % Order filter on the original image
    Ispm = ordfilt2(Isp,filter(i),ones(neighborhood)); % Order filter on image with salt&pepper noise
    Igm = ordfilt2(Ig,filter(i),ones(neighborhood));   % Order filter on image with Gaussian noise

    %Show filtered images                          
    subplot(2,3,4); imshow(Im);              
    subplot(2,3,5); imshow(Ispm);
    subplot(2,3,6); imshow(Igm);
    disp('Press any key to continue!');
    pause();
end 