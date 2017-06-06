clear all;
close all;

calculator = imread('calculator.png');

figure(1)
imshow(calculator,[]);
title('Original');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


SE = ones(1,71);
calculator_erozja = imerode(calculator,SE);

figure(2)
imshow(calculator_erozja,[]);
title('Erozja');

calculator_reco_Erozja = imreconstruct(calculator_erozja,calculator);

figure(3)
imshow(calculator_reco_Erozja,[]);
title('Erozja przez rekonstrukcje - poziome');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

SE = ones(1,71);
calculator_otwarcie = imopen(calculator,SE);

figure(4)
imshow(calculator_otwarcie,[]);
title('Otwarcie');

calculator_reco_Open = imreconstruct(calculator_otwarcie,calculator);

figure(5)
imshow(calculator_reco_Open,[]);
title('Otwarcie przez rekonstrukcje');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 44444444444

calculator_diff = calculator - calculator_reco_Erozja;

figure(6)
imshow(calculator_diff,[]);
title('Top-hat przez rekonstrukcje');

SE1 = strel('square',10);
calculator_tophat = imtophat(calculator,SE1);

figure(7)
imshow(calculator_tophat,[]);
title('Klasyczna opercja Top-hat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5555555555

SE2 = ones(1,11);
calculator_erozja2 = imerode(calculator_diff,SE2);

calculator_reco_Erozja2 = imreconstruct(calculator_erozja2,calculator_diff);

figure(8)
imshow(calculator_reco_Erozja2,[]);
title('Erozja przez rekonstrukcje - pionowe')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 66666666666

SE3 = ones(1,21);
calculator_Dylatacja = imdilate(calculator_reco_Erozja2,SE3);
calculator_final = imreconstruct(min(calculator_Dylatacja,calculator_diff),calculator_diff);

figure(9)
imshow(calculator_final,[]);
title('Rezultat koncowy ')


