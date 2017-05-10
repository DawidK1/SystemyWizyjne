close all;
clear all;

knee=imread('knee.png');

figure(1);
imshow(knee);

[y x]=ginput(1);

x=round(x);
y=round(y);


knee = double(knee);

[x_size, y_size] = size(knee);
visited = zeros(size(knee));
segmented = zeros(size(knee));

stack = zeros(10000,2);
ptr = 1;
stack(ptr,1) = x;
stack(ptr,2) = y;

visited(x,y) = 1;
segmented(x,y) = 1;

threshold = 4.3;
 n = 1;

ref = knee(x,y);

while ptr > 0
   
    n = n+1;
x = stack(ptr, 1);
y = stack(ptr, 2);

ptr = ptr -1 ;

ref = knee(x,y);
    for i = -1:1
        for j = -1:1
            if (i ~= 0 || j ~= 0) && x+i >0 && x+i <= x_size && y+j > 0 && y+j <= y_size
                 if visited(x+i,y+j) == 0
                     visited(x+i,y+j) = 1;
                     if abs(ref - knee(x+i,y+j)) < threshold
                         segmented(x+i,y+j) = knee(x+i,y+j);
                         ptr = ptr +1;
                         stack(ptr,1) = x+i;
                         stack(ptr,2) = y+j;
                         
                     end
                 end             
            end
        end
    end
    
end

segmented = uint8(segmented);
figure(2);
imshow(segmented);