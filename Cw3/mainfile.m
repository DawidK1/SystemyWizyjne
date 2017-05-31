jet = imread('jet.bmp');
load funkcjeLUT;

figure(1);
LUT(jet, ex);

figure(2);
LUT(jet, invlog2);

figure(3);
LUT(jet, kwadratowa);

figure(4);
LUT(jet, log);

figure(5);
LUT(jet, odwrotna);

figure(6);
LUT(jet, odwlog);

figure(7);
LUT(jet, pierwiastkowa);

figure(8);
LUT(jet, pila);

figure(9);
LUT(jet, sq);

figure(10);
LUT(jet, sqr);