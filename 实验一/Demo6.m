figure();
I=imread('D:\��Ƶ�����ݷ���\office.jpg');
subplot(1,2,1);
imshow(I);
title('ԭʼͼ��');
K=imadjust(I,[0.314, 0.588], [0 1]); 
%�ֲ����죬��[0.3 0.7]�ڵĻҶ�����Ϊ[0 1]
subplot(1,2,2);
imshow(K);
title('���Ա任ͼ��');