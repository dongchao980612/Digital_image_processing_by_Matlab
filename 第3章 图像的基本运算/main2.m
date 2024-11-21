% 图像水平镜像matlab程序（horizontal_mirroring33.m）
clc; clear; close all;

img0=imread('../images/lena.jpg');

[h,w]=size(img0);  %获取矩阵的行数h和列数w

for x0=1:h    %把原图像最(偏)右边的列移到新图像的最(偏)左边
   for y0=1:w
       result_img(x0,w-y0+1)=img0(x0,y0);
   end
end

subplot(1,2,1); imshow(img0); title('原图像'); %显示原图像
subplot(1,2,2);imshow(result_img);title('水平镜像结果图像');
