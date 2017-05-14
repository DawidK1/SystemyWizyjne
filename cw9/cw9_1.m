clear all;
close all;

global threshold;
global min_widith;

global index;
global segRes;
global mean_matrix;



image1 = imread('umbrealla.png');

imshow(image1);

hsv_img = double(rgb2hsv(image1));

hsv_img = hsv_img(:,:,1);

[x,y]  = size(hsv_img);


mean_matrix= zeros(size(hsv_img));
index = 1;
merge_threshold = 0.03;

segRes = zeros(size(hsv_img));
threshold = 0.02;
min_widith = 4;
rsplit(hsv_img, 1 ,1 ,x ,y);
figure();
imshow(mean_matrix, []);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for iter_index = 1:index
    
    IB = segRes == iter_index;
    
    [y_i, x_i ] = find(IB, 1, 'first');
    inx_mean = mean_matrix(y_i, x_i);
    IBDilate = imdilate(IB,strel('square',3));
    IBDiff = IBDilate - IB;
    IBMult = IBDiff.*segRes;
    IBUnique = unique(nonzeros(IBMult));
    
    for i = 1:length(IBUnique)
        IBS = segRes == IBUnique(i);
        [y_n , x_n ] = find(IBS, 1 , 'first');
        if abs(mean_matrix(y_n, x_n) - inx_mean) < merge_threshold
            segRes(IBS) = iter_index;
        end
    end
end
figure(3)

imshow(label2rgb(segRes), []);