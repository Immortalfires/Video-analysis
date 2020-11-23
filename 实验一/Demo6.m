figure();
I=imread('D:\视频大数据分析\office.jpg');
subplot(1,2,1);
imshow(I);
title('原始图像');
K=imadjust(I,[0.314, 0.588], [0 1]); 
%局部拉伸，把[0.3 0.7]内的灰度拉伸为[0 1]
subplot(1,2,2);
imshow(K);
title('线性变换图像');