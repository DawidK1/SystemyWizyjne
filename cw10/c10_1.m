clear all
close all

img1 = imread('dwieFale.bmp');
subplot(3,1,1)
imshow(img1)
img_fft = fft2(img1);

img_fft = fftshift(img_fft);
title('oryginal')
subplot(3,1,2)

A = abs(img_fft);
A = log( A + 1);
F = angle(img_fft.*(A > 0.0001));
imshow(A, []);
title('amplituda')
subplot(3,1,3);
imshow(F, [])
title('faza')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure()

img1 = imread('kolo.bmp');
subplot(3,1,1)
imshow(img1)
img_fft = fft2(img1);

img_fft = fftshift(img_fft);
title('oryginal')
subplot(3,1,2)

A = abs(img_fft);
A = log( A + 1);
F = angle(img_fft.*(A > 0.0001));
imshow(A, []);
title('amplituda')
subplot(3,1,3);
imshow(F, [])
title('faza')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure()

img1 = imread('kwadrat.bmp');
subplot(3,1,1)
imshow(img1)
img_fft = fft2(img1);

img_fft = fftshift(img_fft);
title('oryginal')
subplot(3,1,2)

A = abs(img_fft);
A = log( A + 1);
F = angle(img_fft.*(A > 0.0001));
imshow(A, []);
title('amplituda')
subplot(3,1,3);
imshow(F, [])
title('faza')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure()

img1 = imread('kwadrat45.bmp');
subplot(3,1,1)
imshow(img1)
img_fft = fft2(img1);

img_fft = fftshift(img_fft);
title('oryginal')
subplot(3,1,2)

A = abs(img_fft);
A = log( A + 1);
F = angle(img_fft.*(A > 0.0001));
imshow(A, []);
title('amplituda')
subplot(3,1,3);
imshow(F, [])
title('faza')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure()

img1 = imread('trojkat.bmp');
subplot(3,1,1)
imshow(img1)
img_fft = fft2(img1);

img_fft = fftshift(img_fft);
title('oryginal')
subplot(3,1,2)

A = abs(img_fft);
A = log( A + 1);
F = angle(img_fft.*(A > 0.0001));
imshow(A, []);
title('amplituda')
subplot(3,1,3);
imshow(F, [])
title('faza')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
subplot(2,2,1);
imshow(A, []);
title('amplituda')
subplot(2,2,2);
imshow(F, [])
title('faza')

A1 = A;
Faza  = F;

F1 = fft(img1, [], 1);
F2 = fft(F1, [] , 2);

img_fft = fftshift(F2);
A = abs(img_fft);
A = log( A + 1);

F = angle(img_fft.*(A > 0.0001));
subplot(2,2,3);
imshow(A, []);
title('amplituda')
subplot(2,2,4);
imshow(F, [])
title('faza')
figure()

subplot(1,2,1)
imshow(A1 - A, []);
title('różnica amplitudy');
subplot(1,2,2)

imshow( Faza - F,[]);
title('różnica fazy');