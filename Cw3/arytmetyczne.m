close all;
clear all;
load('funkcjeLUT.mat');
lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure(1);
imshow(imsubtract(lena,jet), []);
figure(2);
%wynik jest kiepski, powodem moze byc błędne interpretowanie ujemnych
%wartości gdy korzystamy ze zmiennej bez znaku
lena16 = int16(lena);
jet16 = int16(jet);

imshow(imsubtract(lena16,jet16), []);
figure(3);
imshow(imabsdiff(lena16,jet16), []);
title('roznice absolutne');
figure(4);
imshow(immultiply(lena16,jet16), []);
%przy mnozeniu uzylem obrazów  zapisanych jako int16 ponieważ dla uint8
%obraz był cały biały (obcięcie przy przepełnieniu)
title('mnozenie');

figure(5);
maska = imread('kolo.bmp');
maska = boolean(maska);
imshow(immultiply(maska, jet), []);

figure(6);
imshow(imcomplement(lena));
title('negatyw');


