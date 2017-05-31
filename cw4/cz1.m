close all;
clear all; 


lena1 = imread('lena1.bmp');
lena2 = imread('lena2.bmp');
lena4 = imread('lena4.bmp');
lena3 = imread('lena3.bmp');



figure(1);
subplot(2,4,1);
imshow(lena1);
subplot(2,4,2);
imhist(lena1, 256);
xlim([0;255]);

subplot(2,4,3);
imshow(lena2);
subplot(2,4,4);
imhist(lena2, 256) ;
xlim([0;255]);


subplot(2,4,5);
imshow(lena3);
subplot(2,4,6);
imhist(lena3, 256);
xlim([0;255]);

subplot(2,4,7);
imshow(lena4);
subplot(2,4,8);
imhist(lena4, 256);
xlim([0;255]);

%==============


figure(2);
hist1 = imread('hist1.bmp');
subplot (2,2,1);
imshow('hist1.bmp');
subplot(2,2,2);
imhist(hist1, 256);
subplot(2,2,3);
imshow(imadjust(hist1));
subplot(2,2,4);
imhist(imadjust(hist1));

%rozciagniecie histogramu pozwala na zobaczenie większej ilości szczegółów 
%========================

figure(3);
[H, x] = imhist(hist1, 256);
hist_C = cumsum(H);
 k = max(hist_C) / max(H);
hist_C = hist_C ./k;

imhist(hist1);
hold on;
plot(hist_C);
hold off;
%

figure(4);

[H2, x] = imhist(imadjust(hist1), 256);
hist_C2 = cumsum(H2);
 k = max(hist_C2) / max(H2);
hist_C2 = hist_C2 ./k;

imhist(imadjust(hist1));
ylim([0,2500]);
hold on;
plot(hist_C2);
hold off;
%

%9=======

[H3, x ]  = imhist(hist1, 256);
hist_C3 = cumsum(H3);
LUT = 256.0 * hist_C3 ./max(hist_C3);

LUT = uint8(LUT);
figure(5);
subplot(1,2,1);
plot(x, LUT);
subplot(1,2,2);
imshow(intlut(hist1, LUT));

%10===========


figure(6);
subplot(1,2,1);
imhist(intlut(hist1, LUT));
hold on;
plot(hist_C3, x);
subplot(1,2,2);
imshow(intlut(hist1, LUT));



%12==================
figure(7);
subplot(2,2,1);
histeq(hist1 ,256);
subplot(2,2,2);
histeq(hist1, 150);
subplot(2,2,3);
imshow(adapthisteq(hist1));
subplot(2,2,4);
imshow(adapthisteq(hist1, 'ClipLimit', 0.05));
%13===================




figure(8);

subplot(2, 2, 1);

hist2 = imread('hist2.bmp');
imshow(hist2);

subplot(2,2,2);
imshow(imadjust(hist2));

subplot(2,2,3);
histeq(hist2);

subplot(2,2,4);
imshow(adapthisteq(hist2));

%%======================

figure(9);

subplot(2, 2, 1);

hist3 = imread('hist3.bmp');
imshow(hist3);

subplot(2,2,2);
imshow(imadjust(hist3));

subplot(2,2,3);
histeq(hist3);

subplot(2,2,4);
imshow(adapthisteq(hist3));

%=================================

figure(10);

subplot(2, 2, 1);

hist4 = imread('hist4.bmp');
imshow(hist4);

subplot(2,2,2);
imshow(imadjust(hist4));

subplot(2,2,3);
histeq(hist4);

subplot(2,2,4);
imshow(adapthisteq(hist4));
