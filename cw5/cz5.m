clear all;
close all;

kw = imread('kw.bmp');
load maskiPP;
subplot(2,4,1);
imshow(kw);
subplot(2,4,2);
imshow(uint8(conv2(kw, R1,'same')));

subplot(2,4,3);
imshow(uint8(conv2(kw, R2,'same')));

subplot(2,4,4);
imshow(uint8(conv2(kw, P1,'same')));

subplot(2,4,5);
imshow(uint8(conv2(kw, P2,'same')));

subplot(2,4,6);
imshow(uint8(conv2(kw, S1,'same')));

subplot(2,4,7);
imshow(uint8(conv2(kw, S2,'same')));

