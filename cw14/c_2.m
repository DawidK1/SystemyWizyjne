close all
clear all


im_orig = imread('lenaRGB.bmp');

load maskiPP;

imr = im_orig(:,:,1);
img = im_orig(:,:,2);
imb = im_orig(:,:,3);



imrs1 =conv2(double(imr), S1,'same');
imrs2 =conv2(double(imr), S2,'same');

imr_out = sqrt(imrs1.^2 + imrs2.^2);


imgs1 =conv2(double(img), S1,'same');
imgs2 =conv2(double(img), S2,'same');

img_out = sqrt(imgs1.^2 + imgs2.^2);

imbs1 =conv2(double(imb), S1,'same');
imbs2 =conv2(double(imb), S2,'same');

imb_out = sqrt(imbs1.^2 + imbs2.^2);

figure();
im_out = im_orig;
im_out(:,:,1) = imr_out;
im_out(:,:,2) = img_out;
im_out(:,:,3) = imb_out;
imshow(im_out);
figure(3);
subplot(1,2,1);
imshow( imr_out + imb_out + img_out, []);
im_out_rgb = im_out;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%hsv


im_orig = imread('lenaRGB.bmp');

im_orig = rgb2hsv(im_orig);
load maskiPP;

imr = im_orig(:,:,1);
img = im_orig(:,:,2);
imb = im_orig(:,:,3);



imrs1 =conv2(double(imr), S1,'same');
imrs2 =conv2(double(imr), S2,'same');

imr_out = sqrt(imrs1.^2 + imrs2.^2);


imgs1 =conv2(double(img), S1,'same');
imgs2 =conv2(double(img), S2,'same');

img_out = sqrt(imgs1.^2 + imgs2.^2);

imbs1 =conv2(double(imb), S1,'same');
imbs2 =conv2(double(imb), S2,'same');

imb_out = sqrt(imbs1.^2 + imbs2.^2);

figure();
im_out = im_orig;
im_out(:,:,1) = imr_out;
im_out(:,:,2) = img_out;
im_out(:,:,3) = imb_out;

im_out = hsv2rgb(im_out);
imshow(im_out);

figure(3);
subplot(1,2,2);
imshow( imr_out + imb_out + img_out, []);


