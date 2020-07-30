%% Exercise 1.2 a
% Generate a binary image from „squares.png“ and perform a connected 
% component analysis with a 4- and a 8-neighbourhood. Illustrate the 
% resulting coloured label maps, determine the number of squares and 
% discuss the results. Hint: use Matlab’s im2bw, bwlabel, bwconncomp, 
% labelmatrix. The border (which will be identified as a connected 
% component as well is not a valid square, so do -1 for the final number 
% of squares.

clc, clear variables, close all;
img = imread('squares.png', 'png');
BW = im2bw(img);

L4 = bwlabel(BW,4);
L8 = bwlabel(BW,8);

CC4 = bwconncomp(L4,4);
CC8 = bwconncomp(L8,8);

K4 = labelmatrix(CC4);
K8 = labelmatrix(CC8);

figure(1)
subplot(2,2,1)
imshow(label2rgb(K4))
subplot(2,2,2)
imshow(label2rgb(K8))
subplot(2,2,3)
imshow(label2rgb(L4))
subplot(2,2,4)
imshow(label2rgb(L8))

%% Exercise 1.2 b
% Perform the same tasks as in (a) with the image „cells.jpg“. Illustrate 
% the label map derived from the connected component analysis and determine 
% the number of cells. What is the obvious problem and how could it be 
% overcome?

clc, clear variables, close all;
img = imread('cells.jpg', 'jpg');
I1 = rgb2gray(img);
I2 = imadjust(I1);
level = graythresh(I2);

BW = im2bw(I2,level);
BW = imcomplement(BW);

label = bwlabel(BW,4);
CC4 = bwconncomp(label,4);
CC8 = bwconncomp(label,8);
L4 = labelmatrix(CC4);

imshow(label2rgb(L4));

fprintf("4-neighbourhood: %d\n", CC4.NumObjects)
fprintf("4-neighbourhood: %d\n", CC8.NumObjects)



