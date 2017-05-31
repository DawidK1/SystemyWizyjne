clear all;
close all;


lena_szum = imread('lenaSzum.bmp');

lena_filtred = medfilt2(lena_szum);

subplot(2,2,1);
imshow(lena_szum);
subplot(2,2,2);
imshow(lena_filtred);
subplot(2,2,3);
imshow(imabsdiff(lena_filtred,lena_szum), []);

figure(2);

subplot(2,2,1);
imshow(lena_szum);
subplot(2,2,2);
lena_filtred = uint8(conv2(lena_szum, fspecial('average'), 'same'));
imshow(lena_filtred);
subplot(2,2,3);
imshow(imabsdiff(lena_filtred, lena_szum), []);
