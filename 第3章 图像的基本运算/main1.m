clc; 
clear ; 
close all;

f=imread('../images/lena.jpg');

subplot(1,2,1); imshow(f); title('ԭͼ��'); %��ʾԭͼ��
subplot(1,2,2); imhist(f); title('ԭͼ���ֱ��ͼ'); 
