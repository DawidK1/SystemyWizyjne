clear all;
close all;


im1 = imread('ferrari.bmp');

subplot(2,2,1);
imshow(im1);

se = strel('square', 3);

im_er = imerode(im1, se);
im_dil = imdilate(im1, se);

subplot(2,2,2);
imshow(im_er);
subplot(2,2,3);
imshow(im_dil);
subplot(2,2,4);
imshow(imabsdiff(im_er, im_dil), []);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure();
subplot(2,2,1);
imshow(im1);
im_th = imtophat(im1, se);
subplot(2,2,2);
imshow(im_th,[]);

im_bh = imbothat(im1, se);
subplot(2,2,3);
imshow(im_bh,[]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure();
im2 = imread('rice.png');

se = strel('square', 10);

im_ed = imtophat(im2, se);

subplot(1,2,1);
imshow(im2);
subplot(1,2,2);

imshow(im_ed);














