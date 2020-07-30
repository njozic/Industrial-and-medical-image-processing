function [outimg] = ScaleImg(indata)
%scales the data into a given interval

 img = double(indata);
 img = img - min(img(:));
 maximum = max(img(:));
 outimg = uint8((img / maximum) * 255);


