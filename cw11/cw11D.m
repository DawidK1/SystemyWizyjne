close all;
clear all;

img = imread('kwadraty.tif');
img = zeros(20,20);

img(10, 4:5) = 1;

%img_edges = edge(img, 'canny', 0.8);
img_edges  = img;
imshow(img);
figure();
imshow(img_edges);
figure();

H = houghAB(img_edges);
imshow(H,[]);


%%%%%%%%%%%%%%%%%%%%%
figure();

img = zeros(20,20);

img(11:17,7) = 1;

%img_edges = edge(img, 'canny', 0.8);
img_edges  = img;
imshow(img);
figure();
imshow(img_edges);
figure();

H = houghAB(img_edges);
imshow(H,[]);