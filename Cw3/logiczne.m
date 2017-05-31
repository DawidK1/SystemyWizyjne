clear all;
close all;


kolo = boolean(imread('kolo.bmp'));
kwadrat = boolean(imread('kwadrat.bmp'));


figure(1);
subplot(2,1,1);
imshow(kolo);
subplot(2,1,2);
imshow(kwadrat);

figure(2);
subplot(2,1,1);
imshow(~kolo);
subplot(2,1,2);
imshow(~kwadrat);

figure(3)

imshow(kolo & kwadrat);
title('AND');
figure(4)

imshow(kolo | kwadrat);
title('OR');
figure(5)

imshow(xor(kolo,kwadrat));
title('XOR');