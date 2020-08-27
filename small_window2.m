clear, clc
file_path = '.\';
save_path = '.\rec\';
% 加载图像到内存，如读取matlab自带的图像，并将其显示出来
name1 = dir(strcat(file_path,'*.png'));
name2 = dir(strcat(file_path,'*.tif'));
leftup = [20,80];
rightdown = [70,130];
ratio = 2.5;
for i = 1:length(name1)
    img_name = name1(i).name;
    img_name = img_name(1:end-4);
    I = imread(name1(i).name);
    I1 = ShowEnlargedRectangle(I,leftup,rightdown,ratio,2,2);
%     figure;imshow(I1); 
    axis on
    imwrite(I1,strcat(save_path,name1(i).name));
end 
img_name = name2(1).name;
img_name = img_name(1:end-4);
I = imread(name2(1).name);
I1 = ShowEnlargedRectangle(I,leftup,rightdown,ratio,2,2);
% figure;imshow(I1); 
imwrite(I1,strcat(save_path,name2(1).name));
% figure;imshow(I);

axis on