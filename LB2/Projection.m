function tmp = Projection(P,angle)

figure('visible','on');
tmp = zeros(size(angle,2), size(P,1));
P = P.*255;

    for i = 1:angle
        J = imrotate(P, i,'bicubic','crop');
        tmp(i,:) = sum(J);

        subplot(2,2,1);
        plot(tmp(i,:));
        title(['1D-Signal at ' num2str(i) '°']);

        subplot(2,2,2);
        imshow(J);
        title('Rotating Image');

        subplot(2,2,[3 4]);
        imagesc(tmp');
        title('FBP as a Sinogramm ');

        pause(0.005);     
    end

end