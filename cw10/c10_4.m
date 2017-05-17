clear all;
close all;

im1 = imread('lena.bmp');

im1_fft = fftshift(fft2(im1));
A = log(abs(im1_fft) + 1);
F = angle (im1_fft.*(A > 0.0001));

subplot(1,3,1);
imshow(im1);

subplot(1,3,2);
imshow(A,[]);

subplot(1,3,3);
imshow(F,[]);

figure();


[f1, f2] = freqspace(512, 'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.2)) = 0;

im1_fft = im1_fft.*Hd;
im1_filtered = ifft2(ifftshift(im1_fft));

imshow(im1_filtered, []);