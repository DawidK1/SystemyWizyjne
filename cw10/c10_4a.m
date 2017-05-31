close all;
clear all;

I = imread('lena.bmp','bmp');
I = double(I);
F = fft2(I);
shift = fftshift(F);

A = log10(abs(shift)+1);
ph = angle(shift.*(A>0.0001));

figure();
subplot(1,4,1);
imshow(I,[]);
title('Orygina�');
subplot(1,4,2);
imshow(A,[]);
title('amplituda');
subplot(1,4,3);
imshow(ph,[]);
title('faza');


[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.1)) = 0;


subplot(1,4,4);
%colormap(jet(64)); 

mesh(f1,f2,Hd);

shift1 = shift.*Hd;

F1 = ifftshift(shift1);
J = ifft2(F1);

figure();
subplot(1,3,1);
imshow(I,[]);
title('Orygina�');
subplot(1,3,2);
imshow(J,[]);
title('Po odwrotnej transformacie');
subplot(1,3,3);
%colormap(jet(64)); 
mesh(f1,f2,Hd);
title('dolnoprzepustowy');

%%
[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r<0.1)) = 0;

shift2 = shift.*Hd;

F2 = ifftshift(shift2);
J = ifft2(F2);

figure();
subplot(1,3,1);
imshow(I,[]);
title('Orygina�');
subplot(1,3,2);
imshow(J,[]);
title('Po odwrotnej transformacie');
subplot(1,3,3);
%colormap(jet(64)); 
mesh(f1,f2,Hd);
title('gornoprzepustowy');


%%
[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r<0.1) & (r>0.1)) = 0;

shift2 = shift.*Hd;

F2 = ifftshift(shift2);
J = ifft2(F2);

figure();
subplot(1,3,1);
imshow(I,[]);
title('Orygina�');
subplot(1,3,2);
imshow(J,[]);
title('Po odwrotnej transformacie');
subplot(1,3,3);
%colormap(jet(64)); 
mesh(f1,f2,Hd);
title('pasmowoprzepustowy');

%%

h = fwind1(Hd,hanning(21));
[H f1 f2] = freqz2(h,512,512);

figure();
mesh(f1,f2,H);

%%
[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r>0.1)) = 0;
h = fwind1(Hd,hanning(21));
[H f1 f2] = freqz2(h,512,512);


shift2 = shift.*H;

F1 = ifftshift(shift2);
J = ifft2(F1);

figure();
subplot(1,3,1);
imshow(I,[]);
title('Orygina�');
subplot(1,3,2);
imshow(J,[]);
title('Po odwrotnej transformacie');
subplot(1,3,3);
%colormap(jet(64)); 
mesh(f1,f2,Hd);
title('dolnoprzepustowy');

%%
[f1,f2] = freqspace(512,'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd((r<0.1)) = 0;
h = fwind1(Hd,hanning(21));
[H f1 f2] = freqz2(h,512,512);


shift3 = shift.*H;

F2 = ifftshift(shift3);
J = ifft2(F2);

figure();
subplot(1,3,1);
imshow(I,[]);
title('Orygina�');
subplot(1,3,2);
imshow(J,[]);
title('Po odwrotnej transformacie');
subplot(1,3,3);
 
mesh(f1,f2,Hd);
title('gornoprzepustowy');
%colormap(jet(64));
