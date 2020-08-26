clear, clc

% 加载图像到内存，如读取matlab自带的图像，并将其显示出来
I = imread('原boat.png');
 
I1 = ShowEnlargedRectangle(I,[100,250],[170,330],3,2,2);
% figure;imshow(I);
figure;imshow(I1); 
imwrite(I1,'1.png');
axis on