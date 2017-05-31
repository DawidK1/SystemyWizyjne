function LUT(obraz,przekodowanie) 

obraz2 = intlut(obraz, przekodowanie);
subplot(2,2,3);
imshow(obraz );
title('Oryginał');
subplot(2,2,4);
imshow(obraz2 );
title('Po przetworzeniu');
subplot(2,2,1:2);
plot(przekodowanie );
title('Funkcja przekodowująca');
xlim([0,255]);
ylim([0,255]);
end