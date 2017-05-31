clear all;
close all;

plansza = imread('lena.bmp');

filtr1 =  fspecial('average',3);
plansza_conv = uint8(conv2(plansza , filtr1, 'same'));

subplot(2,2,1);
imshow(plansza);
subplot(2,2,2);
imshow(plansza_conv);
subplot(2,2,3);
imshow(imabsdiff(plansza, plansza_conv) , []);

%filtracja dolnoprzepustowa rozmywa pojedyncze zakłócenia, ale rozmywa tez
%krawedzie

figure(2);
filtr1 =  fspecial('average',3);
filtr2 =  fspecial('average',5);
filtr3 =  fspecial('average',9);
filtr4 =  fspecial('average',15);
filtr5 = fspecial('average',35);

plansza_conv1 = uint8(conv2(plansza , filtr1, 'same'));
plansza_conv2 = uint8(conv2(plansza , filtr2, 'same'));
plansza_conv3 = uint8(conv2(plansza , filtr3, 'same'));
plansza_conv4 = uint8(conv2(plansza , filtr4, 'same'));
plansza_conv5 = uint8(conv2(plansza , filtr5, 'same'));
subplot(2,3,2);
imshow(plansza_conv1);

subplot(2,3,3);
imshow(plansza_conv2);

subplot(2,3,4);
imshow(plansza_conv3);

subplot(2,3,5);
imshow(plansza_conv4);

subplot(2,3,6);
imshow(plansza_conv5);

subplot(2,3,1);
imshow(plansza);

%===============================================
figure(3);
 M = [1 2 1; 2 4 2; 1 2 1]; 
M = M/sum(sum(M));
plansza_mask1 = uint8(conv2(plansza, M, 'same'));
subplot(2,2,1);
imshow(plansza);

subplot(2,2,2);
imshow(plansza_mask1);

subplot(2,2,3);
imshow(imabsdiff(plansza, plansza_mask1), []);
subplot(2,2,4);
mask_gauss  = fspecial('gaussian', 5, 4);
plansza_gauss = uint8(conv2(plansza, mask_gauss, 'same'));
imshow(plansza_gauss);
%=================================================


