close all;
clear all;

coins = imread('coins.png');

subplot(3,1,1);


imshow(coins);
subplot(3,1,2);
imhist(coins);
subplot(3,1,3);
coinsb = im2bw(coins,100/255);
imshow(coinsb);


%=========================\

figure(2)
fig = imread('figura2.tif');

subplot(3,1,1);


imshow(fig);
subplot(3,1,2);
imhist(fig);
subplot(3,1,3);
figb = im2bw(fig,111/255);
imshow(figb);

%=========================
figure(3)
fig = imread('figura.tif');

subplot(3,1,1);


imshow(fig);
subplot(3,1,2);
imhist(fig);
subplot(3,1,3);
figb = im2bw(fig,111/255);
imshow(figb);




%==========================
figure(4);

fig = imread('figura3.tif');

subplot(3,1,1);


imshow(fig);
subplot(3,1,2);
imhist(fig);
subplot(3,1,3);
figb = im2bw(fig,111/255);
imshow(figb);
%=============================


figure(5);

fig = imread('figura4.tif');

subplot(3,1,1);


imshow(fig);
subplot(3,1,2);
imhist(fig);
%================================

figure(6)
subplot(2,1,1);
imshow(coinsb);

subplot(2,1,2);

imshow(im2bw(coins, graythresh(coins)));
title('metoda Otsu');

%-======================================

figure(7);
subplot(3,2,1);
title('Oryginał');

imshow(coins);
subplot(3,2,2);
title('Histogram');

imhist(coins);
subplot(3,2,3);
imshow(im2bw(coins, graythresh(coins)));
title(strcat('metoda Otsu próg=' , num2str(graythresh(coins)*256)));

subplot(3,2,4);
imshow(im2bw(coins,111/255));
title(strcat('metoda ręczna próg=', num2str(111)));






subplot(3,2,5);
imshow(im2bw(coins,clusterKittler(coins)/255));
title(strcat('Kittler próg=', num2str(clusterKittler(coins))));
subplot(3,2,6);
imshow(im2bw(coins,entropyYen(coins)/255));
title(strcat('EntropyYen próg=', num2str(entropyYen(coins))));

%=========================================


%-======================================

coins = imread('rice.png');
figure(8);
subplot(3,2,1);
title('Oryginał');

imshow(coins);
subplot(3,2,2);
title('Histogram');

imhist(coins);
subplot(3,2,3);
imshow(im2bw(coins, graythresh(coins)));
title(strcat('metoda Otsu próg=' , num2str(graythresh(coins)*256)));

subplot(3,2,4);
imshow(im2bw(coins,111/255));
title(strcat('metoda ręczna próg=', num2str(111)));






subplot(3,2,5);
imshow(im2bw(coins,clusterKittler(coins)/255));
title(strcat('Kittler próg=', num2str(clusterKittler(coins))));
subplot(3,2,6);
imshow(im2bw(coins,entropyYen(coins)/255));
title(strcat('EntropyYen próg=', num2str(entropyYen(coins))));

%=========================================


coins = imread('tekst.bmp');
figure(9);
subplot(3,2,1);
title('Oryginał');

imshow(coins);
subplot(3,2,2);
title('Histogram');

imhist(coins);
subplot(3,2,3);
imshow(im2bw(coins, graythresh(coins)));
title(strcat('metoda Otsu próg=' , num2str(graythresh(coins)*256)));

subplot(3,2,4);
imshow(im2bw(coins,111/255));
title(strcat('metoda ręczna próg=', num2str(111)));






subplot(3,2,5);
imshow(im2bw(coins,clusterKittler(coins)/255));
title(strcat('Kittler próg=', num2str(clusterKittler(coins))));
subplot(3,2,6);
imshow(im2bw(coins,entropyYen(coins)/255));
title(strcat('EntropyYen próg=', num2str(entropyYen(coins))));

%=========================================


coins = imread('obiekty.bmp');
figure(10);
subplot(3,2,1);
title('Oryginał');

imshow(coins);
subplot(3,2,2);
title('Histogram');

imhist(coins);
subplot(3,2,3);
imshow(im2bw(coins, graythresh(coins)));
title(strcat('metoda Otsu próg=' , num2str(graythresh(coins)*256)));

subplot(3,2,4);
imshow(im2bw(coins,111/255));
title(strcat('metoda ręczna próg=', num2str(111)));






subplot(3,2,5);
imshow(im2bw(coins,clusterKittler(coins)/255));
title(strcat('Kittler próg=', num2str(clusterKittler(coins))));
subplot(3,2,6);
imshow(im2bw(coins,entropyYen(coins)/255));
title(strcat('EntropyYen próg=', num2str(entropyYen(coins))));

%=========================================


coins = imread('katalog.bmp');
figure(11);
subplot(3,2,1);
title('Oryginał');

imshow(coins);
subplot(3,2,2);
title('Histogram');

imhist(coins);
subplot(3,2,3);
imshow(im2bw(coins, graythresh(coins)));
title(strcat('metoda Otsu próg=' , num2str(graythresh(coins)*256)));

subplot(3,2,4);
imshow(im2bw(coins,111/255));
title(strcat('metoda ręczna próg=', num2str(111)));






subplot(3,2,5);
imshow(im2bw(coins,clusterKittler(coins)/255));
title(strcat('Kittler próg=', num2str(clusterKittler(coins))));
subplot(3,2,6);
imshow(im2bw(coins,entropyYen(coins)/255));
title(strcat('EntropyYen próg=', num2str(entropyYen(coins))));

%=========================================