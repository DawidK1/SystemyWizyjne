clear all;
close all;

phobos =imread('phobos.bmp');
figure(1);
imshow(phobos);
figure(2);
histeq(phobos);

load histogramZadany;

figure(3);
histeq(phobos, histogramZadany);

figure(4);
subplot(1,3,1);
p_adj = imadjust(phobos);
imshow(p_adj);
title('Rozciągniety');
subplot(1,3,2);
imshow(adapthisteq(phobos));
title('Adapt');
subplot(1,3,3);

histeq(phobos, histogramZadany);
title('Zadany');