%% Hit-or-miss transformation

close all
clear all
clc

% Read image
I = zeros(50,50); 
I(20:30,20:30) = 1;
% Example 1
se1 = [1 1 1; 1 0 0; 1 0 0]; % SE1 defines hits
se2 = [0 0 0; 0 1 1; 0 1 1]; % SE2 defines miss
bw = bwhitmiss(I,se1,se2); % hit-or-miss transformation
figure,
subplot(2,2,1);imshow(I); title('Original image');
subplot(2,2,2);imshow(bw); title('Example 1');

% Example 2
interval = [ 1 1 1; 1 -1 -1; 1 -1 -1];
bw = bwhitmiss(I,interval); % hit-or-miss transformation
subplot(2,2,3);imshow(bw); title('Example 2');

% Example 3
interval = [ 0 1 1; 0 1 1; 0 0 0];
bw = bwhitmiss(I,interval); % hit-or-miss transformation
subplot(2,2,4);imshow(bw); title('Example 3');

