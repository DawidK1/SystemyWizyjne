clear all;
close all;

load inv_filter.mat

imshow(inv_filter);

im_f = fft2(inv_filter);

psf = fspecial('disk',10);
psf_f = fft2(psf, 256, 256);

imf_odz = im_f ./ psf_f;

im_od = abs(ifft2(imf_odz));

figure()
imshow(im_od);
title('disk 10');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
psf = fspecial('disk',8);
psf_f = fft2(psf, 256, 256);

imf_odz = im_f ./ psf_f;

im_od = abs(ifft2(imf_odz));

figure()
imshow(im_od,[]);
title('disk 8');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

psf = fspecial('disk',12);
psf_f = fft2(psf, 256, 256);

imf_odz = im_f ./ psf_f;

im_od = abs(ifft2(imf_odz));

figure()
imshow(im_od,[]);
title('disk 12');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%dla parametrów innych niz 10 jest niemozliwe odzyskanie obrazu

