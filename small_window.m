clear, clc

% ����ͼ���ڴ棬���ȡmatlab�Դ���ͼ�񣬲�������ʾ����
I = imread('ԭboat.png');
 
I1 = ShowEnlargedRectangle(I,[100,250],[170,330],3,2,2);
% figure;imshow(I);
figure;imshow(I1); 
imwrite(I1,'1.png');
axis on