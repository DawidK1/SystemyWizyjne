figure(1);
plot(invlog2);
figure(2);

jet = imread('jet.bmp');
imshow(jet);

jet2 = intlut(jet, kwadratowa);

figure(3);
imshow(jet2);