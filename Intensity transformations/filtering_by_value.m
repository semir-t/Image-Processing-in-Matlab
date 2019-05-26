%% Filtering by value

Io = imread('peppers.png');
figure,rgb_histogram(Io);
I = pixel_value_filter(Io,[40 80],[0 50],[40 80]);
figure,imshow(I);
figure,rgb_histogram(I);

I = pixel_value_filter(Io,[30 100],[0 60],[30 100]);
figure,imshow(I);
figure,rgb_histogram(I);