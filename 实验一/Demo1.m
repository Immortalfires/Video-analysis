figure();
I=imread('D:\��Ƶ�����ݷ���\Lena_256x256.bmp');
subplot(1,2,1);
imshow(I);
title('ԭʼͼ��');
subplot(1,2,2);
imhist(I);
title('�Ҷ�ͼֱ��ͼ');