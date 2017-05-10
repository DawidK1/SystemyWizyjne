clear all; 
close all;

global threshold;
global min_widith;

global index;
global segRes;
global mean_matrix;



image1 = imread('umbrealla.png');

imshow(image1);

hsv_img = double(rgb2hsv(image1));

hsv_img = hsv_img(:,:,1);

[x,y]  = size(hsv_img);

segRes = zeros(size(hsv_img));
mean_matrix= zeros(size(hsv_img));
index = 1;
min_widith = 8;
segRes = zeros(size(hsv_img));
threshold = 0.05;
min_widith = 8;
split(hsv_img, 1 ,y ,1 ,x);

imshow(mean_matrix, []);