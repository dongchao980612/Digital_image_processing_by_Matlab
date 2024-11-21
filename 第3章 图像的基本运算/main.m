%灰度反转matlab程序
clc; 
clear ; 
close all;

img0=imread('../images/lena.jpg');

result_img=256-1-img0; % 图像阵列中的所有像素的灰度值反转

subplot(1,2,1); imshow(img0); title('原图像'); %显示原图像
subplot(1,2,2);imshow(result_img);title('灰度反转图像(负片)');
