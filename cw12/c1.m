clear all;
close all;

img1 = imread('ertka.bmp');

se = strel('square', 3);

im_erdoded = imerode(img1,se);

subplot(1,2,1);

imshow(img1);

subplot(1,2,2);
imshow(im_erdoded);

figure()

se = strel('diamond', 2);

im_erdoded = imerode(img1,se);

subplot(1,2,1);

imshow(img1);

subplot(1,2,2);
imshow(im_erdoded);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure();
se = strel('square', 3);

im_erdoded = imerode(img1,se);
im_erdoded = imerode(im_erdoded, se);
subplot(1,3,1);

imshow(img1);

subplot(1,3,2);
imshow(im_erdoded);

subplot(1,3,3);
im_erdoded = imerode(im_erdoded, se);
imshow(im_erdoded);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure();
subplot(1,2,1)
img2 = imread('buska.bmp');
imshow(img2);
my_se = [0,0,0 ;    0,1,0   ;1,0,0 ];

im2_eroded  = imerode(img2, my_se);

subplot(1,2,2)
imshow(im2_eroded);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
imdilated = imdilate(img1, se);

subplot(2,3,1);
imshow(img1);
title('original')
subplot(2,3,2);
imshow(imdilated);
title('dilated');
subplot(2,3,3);
im_erdoded = imerode(img1,se);
imshow(im_erdoded);
title('eroded');
im1_closed = imclose(img1, se);
subplot(2,3,4);
imshow(im1_closed);
title('closed');
subplot(2,3,5);
im1_opened = imopen(img1, se);
imshow(im1_opened);
title('open');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
img1 = imread('wyspa.bmp');
imdilated = imdilate(img1, se);

subplot(2,3,1);
imshow(img1);
title('original')
subplot(2,3,2);
imshow(imdilated);
title('dilated');
subplot(2,3,3);
im_erdoded = imerode(img1,se);
imshow(im_erdoded);
title('eroded');
im1_closed = imclose(img1, se);
subplot(2,3,4);
imshow(im1_closed);
title('closed');
subplot(2,3,5);
im1_opened = imopen(img1, se);
imshow(im1_opened);
title('open');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
img1 = imread('kolka.bmp');
imdilated = imdilate(img1, se);

subplot(2,3,1);
imshow(img1);
title('original')
subplot(2,3,2);
imshow(imdilated);
title('dilated');
subplot(2,3,3);
im_erdoded = imerode(img1,se);
imshow(im_erdoded);
title('eroded');
im1_closed = imclose(img1, se);
subplot(2,3,4);
imshow(im1_closed);
title('closed');
subplot(2,3,5);
im1_opened = imopen(img1, se);
imshow(im1_opened);
title('open');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure()
img3= imread('ertka.bmp');
img3_rep = imopen(img3, se);
img3_rep  = imdilate(img3_rep, se);
imshow(img3_rep);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure();

SE1= [ 0 1 0; 1 1 1; 0 1 0]; 

SE2= [ 1 0 1; 0 0 0; 1 0 1]; 

img4 = imread('hom.bmp');
subplot(1,2,1);
imshow(img4);

imhm = bwhitmiss(img4, SE1, SE2);
subplot(1,2,2);
imshow(imhm);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

