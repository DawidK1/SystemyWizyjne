
close all
clear all



im_orig = imread('lenaRGBSzumKolor.bmp');

imshow(im_orig);


figure();


imr = im_orig(:,:,1);
img = im_orig(:,:,2);
imb = im_orig(:,:,3);

imr_f =medfilt2(imr);
img_f = medfilt2(img);
imb_f = medfilt2(imb);

im_out(:,:,1) = imr_f;
im_out(:,:,2) = img_f;
im_out(:,:,3) = imb_f;
imshow(im_out);

figure();
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
im_orig = imread('lenaRGBSzumKolor.bmp');

im_orig = rgb2hsv(im_orig);


imr = im_orig(:,:,1);
img = im_orig(:,:,2);
imb = im_orig(:,:,3);

imr_f =medfilt2(imr);
img_f = medfilt2(img);
imb_f = medfilt2(imb);

im_out(:,:,1) = imr_f;
im_out(:,:,2) = img_f;
im_out(:,:,3) = imb_f;
imshow(hsv2rgb(im_out));