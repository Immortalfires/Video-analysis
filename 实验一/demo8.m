%��Ƶ�Ķ�ȡ
obj=VideoReader('viptraffic.avi');
disp(obj.FrameRate);
%��Ƶ֡����
numFrames=obj.NumberOfFrames;
%��֡��ȡ��Ƶ�������ţ�������ͼƬ����
for i=1:numFrames
     frame = read(obj,i);
     disp('��ǰ��֡����'),disp(i);
     %����֡
     path=strcat('.\image\',num2str(i),'.jpg');
     imwrite(frame,path,'jpg');
     imshow(frame);
     title('ԭʼ��Ƶ');
end
%�����հ���Ƶ�ļ�����
aviobj=VideoWriter('viptraffic_gray.avi');
aviobj.FrameRate=15;
open(aviobj)
%ÿ֡ͼƬת��Ϊ�Ҷ�ͼƬ������
for i=1:numFrames
     path=strcat('.\image\',num2str(i),'.jpg');
     I=rgb2gray(imread(path));%ת���ĻҶ�ͼ��
     grayPath=strcat('.\gray\',num2str(i),'.jpg');
     imwrite(I,grayPath,'jpg');
     writeVideo(aviobj,I); %д����Ƶ
end
close(aviobj);