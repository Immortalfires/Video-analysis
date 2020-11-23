%视频的读取
obj=VideoReader('viptraffic.avi');
disp(obj.FrameRate);
%视频帧总数
numFrames=obj.NumberOfFrames;
%逐帧读取视频，并播放，并保存图片序列
for i=1:numFrames
     frame = read(obj,i);
     disp('当前播帧数：'),disp(i);
     %保存帧
     path=strcat('.\image\',num2str(i),'.jpg');
     imwrite(frame,path,'jpg');
     imshow(frame);
     title('原始视频');
end
%创建空白视频文件对象
aviobj=VideoWriter('viptraffic_gray.avi');
aviobj.FrameRate=15;
open(aviobj)
%每帧图片转换为灰度图片并保存
for i=1:numFrames
     path=strcat('.\image\',num2str(i),'.jpg');
     I=rgb2gray(imread(path));%转换的灰度图像
     grayPath=strcat('.\gray\',num2str(i),'.jpg');
     imwrite(I,grayPath,'jpg');
     writeVideo(aviobj,I); %写入视频
end
close(aviobj);