close all;
clear all;

literki = imread('literki.bmp','bmp');
wzorA = imread('wzorA.bmp','bmp');

figure();
subplot(1,2,1);
imshow(literki);
subplot(1,2,2);
imshow(wzorA);


wzorAF = fft2(rot90(wzorA,2),256,256);
literkiF = fft2(literki,256,256);

wzorAs = fftshift(wzorAF);
literkis = fftshift(literkiF);

obraz = wzorAs.*literkis;

F = ifftshift(obraz);
J = ifft2(F);

figure();
imshow(J,[]);

SE = strel('square', 3);

wynik = imtophat(J,SE);

figure();
imshow(wynik,[]);