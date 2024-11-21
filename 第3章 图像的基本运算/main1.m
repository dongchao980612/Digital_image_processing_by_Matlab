clc; 
clear ; 
close all;

f=imread('../images/lena.jpg');

subplot(1,2,1); imshow(f); title('原图像'); %显示原图像
subplot(1,2,2); imhist(f); title('原图像的直方图'); 
