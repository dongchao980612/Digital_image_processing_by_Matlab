clc; clear all; % 清除命令窗口的内容，清除工作空间中的所有变量
close all; %关闭所有的Figure窗口

h=280;  w=280;
out_gray = 1.0; 

img = zeros(h, w); % 初始化图像矩阵

% 创建4个子图
for num = 1:4
    for i = 1:h
        for j = 1:w
            img(i,j) = out_gray;  % 给整个图像赋以亮度值
        end
    end
    out_gray = out_gray + 70.0;

    for i = 93:189          % 内方块为96*96
        for j = 93:189
            img(i,j) = 100;  % 给图像中间方块赋以亮度值100
        end
    end

    f = uint8(img);
    subplot(2,2,num); % 创建2x2布局的子图
    imshow(f);
    title(['比值为100/', num2str(out_gray-70), '的同时对比效应图像']);
end