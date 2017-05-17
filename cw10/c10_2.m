clear all
close all

img1 = imread('kwadrat.bmp');
img2 = imread('kwadrat45.bmp');

im1_fft = fftshift(fft2(img1));
im2_fft = fftshift(fft2(img2));

A1 = log(abs(im1_fft) + 1);
A2 = log(abs(im2_fft) + 1);

F1 = angle(im1_fft.*(A1 > 0.0001));
F2 = angle(im2_fft.*(A2 > 0.0001));

subplot(4,2,1)
imshow(img1,[]);
title('oryginal');

subplot(4,2,2)
imshow(img2,[]);
title('rotacja');

subplot(4,2,3)
imshow(A1,[]);
title('oryginal-amplituda');

subplot(4,2,4)
imshow(A2,[]);
title('rotacja-amplituda');

subplot(4,2,5)
imshow(F1,[]);
title('oryginal-faza');

subplot(4,2,6)
imshow(F2,[]);
title('rotacja-faza');

subplot(4,2,7)
imshow(abs(A1-A2),[]);
title('roznica-amplituda');

subplot(4,2,8)
imshow(abs(F1 - F2),[]);
title('roznica-faza');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()

img1 = imread('kwadrat.bmp');
img2 = imread('kwadratT.bmp');

im1_fft = fftshift(fft2(img1));
im2_fft = fftshift(fft2(img2));

A1 = log(abs(im1_fft) + 1);
A2 = log(abs(im2_fft) + 1);

F1 = angle(im1_fft.*(A1 > 0.0001));
F2 = angle(im2_fft.*(A2 > 0.0001));

subplot(4,2,1)
imshow(img1,[]);
title('oryginal');

subplot(4,2,2)
imshow(img2,[]);
title('translacja');

subplot(4,2,3)
imshow(A1,[]);
title('oryginal-amplituda');

subplot(4,2,4)
imshow(A2,[]);
title('translacja-amplituda');

subplot(4,2,5)
imshow(F1,[]);
title('oryginal-faza');

subplot(4,2,6)
imshow(F2,[]);
title('translacja-faza');

subplot(4,2,7)
imshow(abs(A1-A2),[]);
title('roznica-amplituda');

subplot(4,2,8)
imshow(abs(F1 - F2),[]);
title('roznica-faza');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()

img1 = imread('kwadrat.bmp');
img2 = imread('kwadratS.bmp');

im1_fft = fftshift(fft2(img1));
im2_fft = fftshift(fft2(img2));

A1 = log(abs(im1_fft) + 1);
A2 = log(abs(im2_fft) + 1);

F1 = angle(im1_fft.*(A1 > 0.0001));
F2 = angle(im2_fft.*(A2 > 0.0001));

subplot(4,2,1)
imshow(img1,[]);
title('oryginal');

subplot(4,2,2)
imshow(img2,[]);
title('przeskalowany');

subplot(4,2,3)
imshow(A1,[]);
title('oryginal-amplituda');

subplot(4,2,4)
imshow(A2,[]);
title('przeskalowany-amplituda');

subplot(4,2,5)
imshow(F1,[]);
title('oryginal-faza');

subplot(4,2,6)
imshow(F2,[]);
title('przeskalowany-faza');

subplot(4,2,7)
imshow(abs(A1-A2),[]);
title('roznica-amplituda');

subplot(4,2,8)
imshow(abs(F1 - F2),[]);
title('roznica-faza');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()

img1 = imread('kwadrat.bmp');
img2 = imread('kwadratKL.bmp');

im1_fft = fftshift(fft2(img1));
im2_fft = fftshift(fft2(img2));

A1 = log(abs(im1_fft) + 1);
A2 = log(abs(im2_fft) + 1);

F1 = angle(im1_fft.*(A1 > 0.0001));
F2 = angle(im2_fft.*(A2 > 0.0001));

subplot(4,2,1)
imshow(img1,[]);
title('oryginal');

subplot(4,2,2)
imshow(img2,[]);
title('kombinacja liniowa');

subplot(4,2,3)
imshow(A1,[]);
title('oryginal-amplituda');

subplot(4,2,4)
imshow(A2,[]);
title('kombinacja liniowa-amplituda');

subplot(4,2,5)
imshow(F1,[]);
title('oryginal-faza');

subplot(4,2,6)
imshow(F2,[]);
title('kombinacja liniowa-faza');

subplot(4,2,7)
imshow(abs(A1-A2),[]);
title('kombinacja liniowa-amplituda');

subplot(4,2,8)
imshow(abs(F1 - F2),[]);
title('kombinacja liniowa-faza');


