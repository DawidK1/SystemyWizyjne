close all;
clear all;



R =128;
k = 0.12;
W2 = 9;


image1 = imread('rice.png');

[ X, Y ] = size(image1);

image_out = image1;


for i = 1 : X
    for j = 1 : Y
        srednia = meanLT(i,j,5,image1,X,Y);
        if image1(i,j) > srednia
            image_out(i,j) = 255;
        else
            image_out(i,j) = 0;
        end
    end
end

figure(1);
subplot(2,1,1);
imshow(image1);
subplot(2,1,2);
imshow(image_out);



image1 = imread('katalog.bmp');

[ X, Y ] = size(image1);

image_out = image1;


for i = 1 : X
    for j = 1 : Y
        srednia = meanLT(i,j,9,image1,X,Y);
        if image1(i,j) > srednia
            image_out(i,j) = 255;
        else
            image_out(i,j) = 0;
        end
    end
end

figure(2);
subplot(2,1,1);
imshow(image1);
subplot(2,1,2);
imshow(image_out);


%================================

image1 = imread('rice.png');

[ X, Y ] = size(image1);

image_out = image1;


for i = 1 : X
    for j = 1 : Y
        srednia = meanLT(i,j,9,image1,X,Y);
        prog = srednia * ( 1 - k * (stddevLT(i,j ,W2, image1, srednia,X,Y)/R - 1));
        if image1(i,j) > prog
            image_out(i,j) = 255;
        else
            image_out(i,j) = 0;
        end
    end
end


figure(3);
subplot(2,1,1);
imshow(image1);
subplot(2,1,2);
imshow(image_out);


%================================

image1 = imread('katalog.bmp');

[ X, Y ] = size(image1);

image_out = image1;


for i = 1 : X
    for j = 1 : Y
        srednia = meanLT(i,j,9,image1,X,Y);
        prog = srednia * ( 1 + k * (stddevLT(i,j ,W2, image1, srednia,X,Y)/R - 1));
        if image1(i,j) > prog
            image_out(i,j) = 255;
        else
            image_out(i,j) = 0;
        end
    end
end


figure(4);
subplot(2,1,1);
imshow(image1);
subplot(2,1,2);
imshow(image_out);




%======================================