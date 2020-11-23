%将RGB图像转为索引图像并保存
I=imread('lena_color_256x256.jpg');
[I2,map]=rgb2ind(I,10);
imwrite(I2,map,'lena_index1.tif','tif');

[I4,map1]=imread('lena_index1.tif');
imshow(I4,map1);
figure();
subplot(1,2,1);
I5=ind2rgb(I4,map1);
imshow(I5);
subplot(1,2,2);
I6=ind2gray(I4,map1);
imshow(I6);