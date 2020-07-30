sigma = 5;
N=32;

X2=-(N-1)/2:(N-1)/2;
k=1/(sqrt(2*pi)*sigma);

[tempx tempy] = meshgrid(X2);
temp_gauss = (-(tempx.^2 + tempy.^2)/(2*sigma^2));

figure;
surf(temp_gauss);