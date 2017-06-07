close all;
clear all;

im1 = imread('wiener_motion_noisy.png');

psf = fspecial('motion', 15,0);

im1 = im2double(im1);

im_res = deconvwnr(im1,psf,1/(3.162*10^3));

imshow(im1);

figure();
imshow(im_res);


v = var(im1(:));

im_res_2 = deconvwnr(im1,psf,1.0046e-005 / v);


im_res_3 = deconvwnr(im1,psf,2*v);

figure()
imshow(im_res_2);


figure()
imshow(im_res_3);