clear all;
close all;

img = zeros(11,11)

img(4,4) = 1;

img(5,5) = 1;
img(7,7) = 1;
[H, theta, rho] = hough(img, 'RhoResolution',0.1,'ThetaResolution', 0.5);

imshow(H,[])