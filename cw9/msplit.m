function msplit(img, y1, y2, x1, x2)


global threshold;
global min_widith;
global mean_matrix;
global index;
global segRes;
temp_img = img(y1:y2,x1:x2);




temp_vec = temp_img(:);
img_mean = mean(temp_vec);
img_std = std(temp_vec);

%     disp('x,y = ')
%     disp(x)
%     disp(y)
if((img_std > threshold )&& ((x2-x1) > min_widith) && (y2-y1) > min_widith)
    hx = floor( (x1+x2)/2 );
    hy = floor( (y1+y2)/2 );
    disp('test')
    x1
    x2
    y1
    y2
    hx
    hy
    msplit(img, y1, y1 +hy, x1 , x1+hx);
    msplit(img, y1, y1 + hy, x1 + hx +1, x2);
    
    msplit(img, y1 + hy+ 1, y2, x1 , x1+hx)
    msplit(img, y1 + hy + 1,y2, x1 + hx +1, x2);
end

%     segRes(y1:y2,x1:x2) = index;
%     mean_matrix(y1:y2,x1:x2) = img_mean;
%     index = index + 1;


end