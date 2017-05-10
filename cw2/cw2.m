close all;
clear all;


lena100 = imread('lena100.bmp');

lena200 = imresize(lena100, 2, 'nearest');

figure(1);
imshow(lena100);
figure(2);
imshow(lena200);
lena200b = imresize(lena100, 2, 'bilinear');
lena200c = imresize(lena100, 2, 'bicubic');
figure(3);
imshow(lena200b);
figure(4);
imshow(lena200c);

%===========================

szachownica = imread('szachownica.bmp');

sz_a = imresize(szachownica, 10, 'nearest');
sz_b = imresize(szachownica, 10, 'bilinear');
sz_c = imresize(szachownica, 10, 'bicubic');

figure(5);
imshow(szachownica);

figure(6);
imshow(sz_a);

figure(7);
imshow(sz_b);

figure(8);
imshow(sz_c);


sz_a100 = imresize(sz_a, [100,100], 'nearest');
sz_b100 = imresize(sz_a, [100,100], 'bilinear');
sz_c100 = imresize(sz_a, [100,100], 'bicubic');

figure(9);
imshow(sz_a100);

figure(10);
imshow(sz_b100);

figure(11);
imshow(sz_c100);
%===============================


lena = imread('lena.bmp');

lena256 = imresize(lena, [256,256], 'bicubic');
lena128 = imresize(lena, [128,128], 'bicubic');
lena64 = imresize(lena, [64,64], 'bicubic');

figure(12)
imshow(lena256, 'InitialMagnification', 200);

figure(13)
imshow(lena128, 'InitialMagnification', 400);
figure(14)
imshow(lena64, 'InitialMagnification', 800);

%=================================

lena128_31 = imadjust(lena128,[0,1],[0,1/8] );
lena128_31 = imadjust(lena128_31,[0,1/8],[0,1] );
figure(15);
subplot(2,3,1);
imshow(lena128_31);

lena128_15 = imadjust(lena128,[0,1],[0,1/16] );
lena128_15 = imadjust(lena128_15,[0,1/16],[0,1] );
subplot(2,3,2);
imshow(lena128_15);

lena128_7 = imadjust(lena128,[0,1],[0,1/32] );
lena128_7 = imadjust(lena128_7,[0,1/32],[0,1] );
subplot(2,3,3);
imshow(lena128_7);


lena128_3 = imadjust(lena128,[0,1],[0,1/64] );
lena128_3 = imadjust(lena128_3,[0,1/64],[0,1] );
subplot(2,3,4);
imshow(lena128_3);

lena128_1 = imadjust(lena128,[0,1],[0,1/255] );
lena128_1 = imadjust(lena128_1,[0,1/255],[0,1] );
subplot(2,3,5);
imshow(lena128_1, []);

%=========================================

figure(19)
subplot(2,3,1);
imshow(imrotate(lena100,45));
subplot(2,3,2);
imshow(imrotate(lena100,-45));
subplot(2,3,3);
imshow(imrotate(lena100,-90));
subplot(2,3,4);
imshow(imrotate(lena100,90));

figure(20)
sz_rotated = imrotate(szachownica,45);
subplot(1,3,1)
imshow(imrotate(szachownica,45, 'nearest'))
subplot(1,3,2)
imshow(imrotate(szachownica,45, 'bilinear'))
subplot(1,3,3)
imshow(imrotate(szachownica,45, 'bicubic'))
%ODPOWIEDZ
%moim zdaniem zadna metoda nie jest sensowna w tym przypadku, ze wzgledu na
%mała rozdzielczość


%===========================================

mtform = affine2d([cosd(45)/2, -sind(45)/2, 0;
          sind(45)/2 , cosd(45)/2, 0;
          0 , 0 ,1]);
      
   
      figure(21);
      out = imwarp(lena,mtform);
      imshow(out);
