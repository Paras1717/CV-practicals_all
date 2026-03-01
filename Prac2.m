
img = imread('img1.jpg');  
img_gray = rgb2gray(img);   

h = ones(3,3) / 9;

smoothed_img = conv2(double(img_gray), h, 'same');

figure;
subplot(1,2,1);
imshow(img_gray);
title('Original Image');

subplot(1,2,2);
imshow(uint8(smoothed_img));
title('Smoothed Image');