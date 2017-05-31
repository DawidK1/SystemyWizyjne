clear all;
close all;

im1 = imread('calculator.png');

imer = imerode(im1,ones(1,71));

im_rec = imreconstruct(imer, im1);

subplot(2,3,1);
imshow(im1);
subplot(2,3,2);
imshow(im_rec);

se = strel('square', 3);
im_top_hat = imtophat(im1, se);
subplot(2,3,3);
imshow(im_top_hat);
