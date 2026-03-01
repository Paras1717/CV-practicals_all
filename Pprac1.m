img1 = imread('img1.jpg');
img2 = imread('img2.jpg');
%show img
figure, imshow(img1), title('Flower');
figure, imshow(img2), title('Photographer');

%convert 2 to BnW
gray2 = rgb2gray(img2);
figure, imshow(gray2), title('Gray Image 2');
%img 1 to color
gray1 = rgb2gray(img1);
colored1 = ind2rgb(gray1, jet(256));  % Map grayscale to jet colormap
figure, imshow(colored1), title('Image 1');

%recolor the image 2
colored2 = ind2rgb(gray2, jet(256)); 
figure, imshow(colored2), title('recolored 2');


