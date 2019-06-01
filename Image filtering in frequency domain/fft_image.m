%% FFT

close all
clear all
clc

% Create black image  (size = 30x30 px)
im = zeros(30,30);
% Create white rectangulare inside the image
im(5:24,13:17) = 1;

figure,
subplot(1,3,1); imshow(im);
F = fft2(im);
subplot(1,3,2); imshow(abs(F),[]);
Flog = log(1+abs(F));
subplot(1,3,3); imshow(Flog,[]);


% DC component is located at the position (0,0). We would like to 
% move the DC component in the center of the image. We can achive 
% that using the fftshift() function.

SF = fftshift(F);
SFlog = log(1+abs(SF));
figure,
subplot(2,2,1); imshow(abs(F),[]); title('2D FFT');
subplot(2,2,2); imshow(abs(SF),[]); title('2D FFT shifted');
subplot(2,2,3); imshow(Flog,[]); title ('FFT log');
subplot(2,2,4); imshow(SFlog,[]); title ('FFT log and shifted');