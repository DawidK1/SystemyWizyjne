clear all;
close all;





im_2 = imread('indeks2.bmp');

figure(1);
imshow(im_2, []);

figure(2);

subplot(2,1,1);
imshow(bwlabel(im_2,4),[]);
title('4 sasiadow');
subplot(2,1,2);

imshow(bwlabel(im_2),[]);
title('8 sasiadow');


figure(3);

im_1 = imread('ksztalty.bmp');

labeled = bwlabel(im_1);


imshow(labeled, []);
r = regionprops(labeled,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

wsp = obliczWspolczynniki(labeled);


[x_size, y_size] = size(labeled);


tylko_krzyzyki = labeled;
for i = 1:x_size
    for j = 1:y_size
        if tylko_krzyzyki(i,j) ~= 0 && wsp(tylko_krzyzyki(i,j),2) > 0.51 && wsp(tylko_krzyzyki(i,j),2) < 0.53;
            tylko_krzyzyki(i,j)=1;
        else
            tylko_krzyzyki(i,j)=0;
        end
    end
end

figure(4);
imshow(tylko_krzyzyki,[]);


figure(5);

tylko_kw = labeled;
for i = 1:x_size
    for j = 1:y_size
        if tylko_kw(i,j) ~= 0 && wsp(tylko_kw(i,j),2) > 0.80 && wsp(tylko_kw(i,j),2) < 0.85;
            tylko_kw(i,j)=1;
        else
            tylko_kw(i,j)=0;
        end
    end
end

imshow(tylko_kw, []);



