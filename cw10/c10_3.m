clear all;
close all;

im1 = imread('kolo.bmp');

im_fft = fftshift(fft2(im1));

im_from_fft = ifft2(ifftshift(im_fft));

subplot(1,3,1);
imshow(im1,[]);

subplot(1,3,2);
imshow(im_from_fft,[]);
subplot(1,3,3);
imshow(abs(uint8(im_from_fft)- im1),[]);
