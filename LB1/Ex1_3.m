%% Exercise 1.3 a
% Perform the subsequent operations for image enhancement on an image of 
% your choice and discuss the effects. Illustrate the progression of the 
% curve within the interval [0, 255] for (a), (b) and (c) and compare them.

clc, clear variables, close all;

img = imread('lena.tiff', 'tiff');
BW = rgb2gray(img);

BW = double(BW);
BW = uint8((BW.^2)./255);
BW = ScaleImg(BW);

imshow(BW);

%% b
clc, clear variables, close all;

img = imread('lena.tiff', 'tiff');
BW = rgb2gray(img);

BW = double(BW);
BW = uint8(sqrt(BW.*255));
BW = ScaleImg(BW);

imshow(BW);

%% c
clc, clear variables, close all;

img = imread('lena.tiff', 'tiff');
BW = rgb2gray(img);

BW = double(BW);
BW = imcomplement(BW);
BW = uint8(BW+255);
BW = ScaleImg(BW);

imshow(BW);

%% d

clc, clear variables, close all;

img = imread('lena.tiff', 'tiff');
BW = rgb2gray(img);

BW = double(BW);
BW = imcomplement(BW);
BW = uint8(BW+255);
BW = ScaleImg(BW);

imshow(BW);

%% d

clc, clear variables, close all;

img = imread('lena.tiff', 'tiff');
BW = rgb2gray(img);

BW = double(BW);
BW = uint8(Clog(1.+BW));
BW = ScaleImg(BW);

imshow(BW);



