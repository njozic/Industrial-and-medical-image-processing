function fbp(P, angle, tmp_projection)

P = P.*255;
figure('visible','on');
tmp = zeros(size(P,1),size(P,2));

for i=1:angle
    J = repmat(tmp_projection(i,:),size(P,1),1);
    J = imrotate(J, -i, 'crop');
    
    tmp = tmp+J;

    subplot(1,2,1);
    imshow(tmp./i,[]);
    title('FBP');
    
    subplot(1,2,2);
    imshow(J./i);
    title(['Projection at ' num2str(i) '*']);
    
    pause(0.01);     

end
end

