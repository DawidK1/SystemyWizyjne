close all; clear all;

image1 = imread('bart.bmp');

imhist(image1);
figure(2);
imshow(image1);



obrazbw = image1 > 192 & image1 < 207;

figure(3);
imshow(obrazbw, []);

