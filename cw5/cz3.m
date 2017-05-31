clear all;
close all;


M = [0 1 0; 1 -4 1; 0 1 0];

M = M/9;

moon= imread('moon.bmp');



moon_conv_1 = conv2(moon, M, 'same');
moon_conv_2 = uint8(moon_conv_1 + 128);
subplot(2,2,1);

imshow(moon);

subplot(2,2,2);

imshow(moon_conv_2, []);

ones1=ones(size(moon_conv_2));
subplot(2,2,3);
 imshow(uint8(abs(moon_conv_1)), []);
 
 
 lp1 = fspecial('laplacian', 0.6);
 
 
 moon_conv_3 = uint8(conv2(moon, lp1, 'same'));
 subplot(2,2,4);
 imshow(moon_conv_3 + moon);