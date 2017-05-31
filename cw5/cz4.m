clear all;
close all;

dipxie = imread('dipxe.jpg');

gauss_filter = fspecial('gaussian',6 ,5);

g_mask = dipxie - uint8(conv2(dipxie, gauss_filter, 'same'));

sharped = dipxie + 4.5* g_mask;

subplot(2,3,1);
imshow(dipxie);
title('Oryginał');
subplot(2,3,2);
imshow(uint8(conv2(dipxie, gauss_filter, 'same')));
title('Rozmyte');
subplot(2,3,3);
imshow(g_mask, []);
title('Maska');
subplot(2,3,4);
imshow(sharped);
title('Highboost filtering');

sharped = dipxie + 1* g_mask;

subplot(2,3,5);
imshow(sharped);
title('Unsharp masking');


