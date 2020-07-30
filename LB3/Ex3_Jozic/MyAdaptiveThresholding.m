function SegImg = MyAdaptiveThresholding(img, sigma, threshold)
    tmp_img = double(img);
    weights = imgaussfilt(tmp_img,sigma).*threshold;
    SegImg = tmp_img > double(weights);
end