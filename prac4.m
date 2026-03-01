img = imread('car.jpg');  

% Step 1: Convert to grayscale
img_gray = rgb2gray(img);   

% Step 2: Detect SIFT keypoints and descriptors
points = detectSIFTFeatures(img_gray);

% Step 3: Extract feature descriptors
[features, valid_points] = extractFeatures(img_gray, points);

% Step 4: Display results
figure;

subplot(1,2,1);
imshow(img_gray);
title('Original Image');

subplot(1,2,2);
imshow(img_gray);
hold on;
plot(valid_points.selectStrongest(100));
title('SIFT Keypoints (Top 100)');
hold off;

% Step 5: Print descriptor info
disp(['Number of keypoints: ', num2str(valid_points.Count)]);
disp(['Descriptor size: ', num2str(size(features,2))]);