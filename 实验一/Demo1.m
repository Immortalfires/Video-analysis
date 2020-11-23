figure();
I=imread('D:\视频大数据分析\Lena_256x256.bmp');
subplot(1,2,1);
imshow(I);
title('原始图像');
subplot(1,2,2);
imhist(I);
title('灰度图直方图');