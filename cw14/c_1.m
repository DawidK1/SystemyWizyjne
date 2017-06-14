clear all
close all

im1 = imread('lenaRGB.bmp');

imr = im1(:,:,1);
img = im1(:,:,2);
imb = im1(:,:,3);


imshow(im1);
figure();
subplot(1,3,1);
imhist(imr);

subplot(1,3,2);
imhist(imr);

subplot(1,3,3);
imhist(imb);

imrEQ = histeq(imr);
imgEQ = histeq(img);
imbEQ = histeq(imb);

im_eq(:,:,1) = imrEQ;
im_eq(:,:,2) = imgEQ;
im_eq(:,:,3) = imbEQ;

figure();
imshow(im_eq);
figure()
%%%%%%%%%%%%%%%%%%
clear all;
im1 = imread('lenaRGB.bmp');


im1 = rgb2hsv(im1);


imr = im1(:,:,1);
img = im1(:,:,2);
imb = im1(:,:,3);


imshow(im1);
figure();
subplot(1,3,1);
imhist(imr);

subplot(1,3,2);
imhist(img);

subplot(1,3,3);
imhist(imb);

imrEQ = histeq(imr);
imgEQ = histeq(img);
imbEQ = histeq(imb);

im_eq2(:,:,1) = imrEQ;
im_eq2(:,:,2) = imgEQ;
im_eq2(:,:,3) = imbEQ;

im_eq2 = hsv2rgb(im_eq2);
figure();
imshow(im_eq2);
figure();






%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
im1 = imread('lenaRGB.bmp');

im1 = rgb2hsv(im1);



imr = im1(:,:,1);
img = im1(:,:,2);
imb = im1(:,:,3);


imshow(im1);
figure();
subplot(1,3,1);
imhist(imr);

subplot(1,3,2);
imhist(img);

subplot(1,3,3);
imhist(imb);

imrEQ = histeq(imr);
imgEQ = histeq(img);
imbEQ = histeq(imb);

im_eq2(:,:,1) = imrEQ;
im_eq2(:,:,2) = img;
im_eq2(:,:,3) = imb;

im_eq2 = hsv2rgb(im_eq2);
figure();
imshow(im_eq2);
