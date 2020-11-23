[I,map]=imread('lena_index1.tif');
figure(1);
title('索引图像');
imshow(I,map);

figure(2);
bw1=im2bw(I,map); %默认阈值0.5
title('阈值为0.5时的二值图像');
imshow(bw1);

figure(3);
level=graythresh(I);
bw2=im2bw(I,level);
title('通过graythresh计算灰度门槛时的二值图像');
imshow(bw2);

figure(4);
bw3=im2bw(I,map,0.6); 
title('阈值为0.6时的二值图像');
imshow(bw3);