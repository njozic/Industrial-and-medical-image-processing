clc, clear variables, close all;

img1 = imread('DSA1.jpg');
img2 = imread('DSA2.jpg');
img3 = img1-img2;

figure
subplot(131);
imshow(img1,[]);
title('IMG1');

subplot(132);
imshow(img2,[]);
title('IMG2');

subplot(133);
imshow(img3,[]);
title('IMG1-IMG2');
colormap(hot);
