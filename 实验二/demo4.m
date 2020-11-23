A=magic(256);
I=mat2gray(A);
figure(1);
imshow(I);
X=grayslice(I,16);
figure(2)
imshow(X,jet(16));