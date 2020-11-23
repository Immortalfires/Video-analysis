I=imread('lena_color_256x256.jpg');
I2=im2double(rgb2gray(I));
[I3,map]=rgb2ind(I,10);

figure1 = figure(1);
set(figure1,'name','原始图像与灰度图像');
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(I2);

figure2 = figure(2);
set(figure2,'name','原始图像与索引图像')
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(I3,map);