clear all;
close all;

im1 = imread('tetniak_aorty.png');

imhandler = imshow(im1);

el_h = imellipse(gca , [220 100 260 170]);

m_mask = createMask(el_h, imhandler);

im_filtred = roifilt2(fspecial('unsharp'),im1, m_mask);
figure()
imshow(im_filtred);




figure()

imadjust_h = @(x) imadjust(x, [0.5, 0.7]);

im_adjusted  = roifilt2(im_filtred, m_mask, imadjust_h);
imshow(im_adjusted, []);