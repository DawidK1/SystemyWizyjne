clear all;
close all;

img1 = imread('fingerprint.bmp');
subplot(2,2,1);
imshow(img1);

subplot(2,2,2);

im_sc = bwmorph(img1,  'thin', 1);
imshow(im_sc);
im_sc2 = bwmorph(img1,  'thin', 2);
subplot(2,2,3);
imshow(im_sc2);
im_sci = bwmorph(img1,  'thin', Inf);
subplot(2,2,4);
imshow(im_sci);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


img2 = imread('kosc.bmp');

figure();

subplot(1,2,1);
imshow(img2);
subplot(1,2,2);

img_skel = bwmorph(img2, 'skel' , Inf);
imshow(img_skel);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()

img3 = imread('text.png');

SE = ones(51,1);
im_eroded = imerode(img3, SE);
imrec = imreconstruct(im_eroded, img3);
subplot(2,2,1);
imshow(img3);
subplot(2,2,2);
imshow(imrec);
subplot(2,2,3);
imshow(imopen(img3, SE));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure();

subplot(2,2,1);
imshow(imfill(img3, 'holes'));
subplot(2,2,2);
imshow(imclearborder(img3));
