clear all;
close all;

im_1 = imread('ksztaltyReal.bmp');


imshow(im_1);


im_bw = ~im2bw(im_1,0.25);

figure(2);
imshow(im_bw);

labeled = bwlabel(im_bw);

wsp = obliczWspolczynniki(labeled);


[x_size, y_size] = size(labeled);


tylko_krzyzyki = labeled;
for i = 1:x_size
    for j = 1:y_size
        if tylko_krzyzyki(i,j) ~= 0 && wsp(tylko_krzyzyki(i,j),2) > 0.55 && wsp(tylko_krzyzyki(i,j),2) < 0.66 &&wsp(tylko_krzyzyki(i,j),3) > 4.5;
            tylko_krzyzyki(i,j)=1;
        else
            tylko_krzyzyki(i,j)=0;
        end
    end
end

figure(4);
imshow(tylko_krzyzyki,[]);