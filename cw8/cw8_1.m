clear all;
close all;

im_1 = imread('indeks1.bmp');

[x_size, y_size] = size(im_1);

figure(1);
imshow(im_1);

L=1;

tabskl = zeros(1,256);

im_out = zeros(x_size, y_size);
for i = 2:x_size-1
    for j = 2:y_size-1
        if im_1(i,j)
            neighbour_vec = [im_out(i -1,j -1 ), im_out(i-1,j) , im_out(i - 1,j+1), im_out(i ,j -1) ];
            if sum(neighbour_vec) == 0
                im_out(i,j) = L;
              
                tabskl(L) = L;
                L= L+1;
            else
                neighbour_vec = nonzeros(neighbour_vec);
                L_min = min(neighbour_vec);
                L_max = max(neighbour_vec);
                im_out(i,j) = L_min;
                tabskl(L_max) = L_min;
               
            end
        end
    
    end
end





figure(2);
subplot(2,1,1);
imshow(im_out, []);
subplot(2,1,2);
imshow(imread('indeksWynik1.bmp'));


for i = 2:x_size-1
    for j = 2:y_size-1
        if im_out(i,j) >0
            im_out(i,j) = tabskl(im_out(i,j));
        end
    end
end

figure(3)

imshow(im_out, []);