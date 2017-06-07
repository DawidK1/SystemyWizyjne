clear all;
close all;

load inv_filter_noisy.mat

psf = fspecial('disk', 10);
psf_f  = fft2(psf,256,256);

im_f = fft2(inv_filter_noisy);

FN = im_f./psf_f;

im_res = abs(ifft2(im_f./psf_f));

imshow(inv_filter_noisy);
figure()
imshow(im_res,[]);

figure();

surf(fftshift(abs(psf_f))), shading interp

figure();


FN(abs(psf_f) < 0.01) = 0;
im_res2 =abs(ifft2(FN));
imshow(im_res2);