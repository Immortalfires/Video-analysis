[I,map]=imread('lena_index1.tif');
figure(1);
title('����ͼ��');
imshow(I,map);

figure(2);
bw1=im2bw(I,map); %Ĭ����ֵ0.5
title('��ֵΪ0.5ʱ�Ķ�ֵͼ��');
imshow(bw1);

figure(3);
level=graythresh(I);
bw2=im2bw(I,level);
title('ͨ��graythresh����Ҷ��ż�ʱ�Ķ�ֵͼ��');
imshow(bw2);

figure(4);
bw3=im2bw(I,map,0.6); 
title('��ֵΪ0.6ʱ�Ķ�ֵͼ��');
imshow(bw3);