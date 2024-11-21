clc; clear all; % 清除命令窗口的内容，清除工作空间中的所有变量
close all; %关闭所有的Figure窗口

img0=imread('../images/women_gray.jpg'); % 读图像文件中的8数据
f=double(img0); % 将uint8格式的图像数据转换成双精度格式的数据
[h, w]=size(f); % 取图像阵列的行数（高）h和列数（宽）w

max=0.0; min=256.0; avg=0.0; %赋初值
for i=1:h
    for j=1:w
        if f(i,j)<min
            min=f(i,j);  %求最小值
        end
        if f(i,j)>max
            max=f(i,j);  %求最大值
        end
        avg = avg+f(i,j);  %计算灰度值的累加和
    end
end

avg=uint8(avg/(h*w));  %双精度格式的平均灰度值转换成8位整数格式数据
fprintf('运算结果:\n'); %输出计算结果到命令窗口
fprintf('图像像素的最大灰度值：%f\n',max);
fprintf('图像像素的最小灰度值：%f\n',min);
fprintf('图像像素的平均灰度值：%f\n',avg);
