clc, clear variables, close all;

img_names = {'journal.png','jb007.jpg','sonnet.png', 'barcode.png'};
s = [30, 80, 6, 25];
t = [0.7, 1.2, 0.925, 1.0];
img ={};

for i=1:4
    img{i}.read = imread(img_names{i});
end

for i=1:numel(img)
    
    figure;
    subplot(141);
    imshow(img{i}.read,[]);
    title('Image');
    
    subplot(142);
    try
        BW = imbinarize(img{i}.read);
        imshow(BW,[]);
    catch
        BW = rgb2gray(img{i}.read);
        BW = imbinarize(BW);
        imshow(BW,[]);
    end
    title('Simple Treshold');
    
    subplot(143);
    try
        img{i}.segimg = MyAdaptiveThresholding(img{i}.read, s(i), t(i));
        imshow(img{i}.segimg);
    catch
        img{i}.segimg = MyAdaptiveThresholding(rgb2gray(img{i}.read), s(i), t(i));
        imshow(img{i}.segimg,[]);
    end
    title('Adaptive Treshold');
    
    subplot(144);
    level = graythresh(img{i}.read);
    try
        img{i}.segimg = MyAdaptiveThresholding(img{i}.read, s(i), level);
        imshow(img{i}.segimg);
    catch
        img{i}.segimg = MyAdaptiveThresholding(rgb2gray(img{i}.read), s(i), level);
        imshow(img{i}.segimg,[]);
    end
    title('tresholding According To Otsu');
    
end



