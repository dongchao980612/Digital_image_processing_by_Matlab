%�Ҷȷ�תmatlab����
clc; 
clear ; 
close all;

img0=imread('../images/lena.jpg');

result_img=256-1-img0; % ͼ�������е��������صĻҶ�ֵ��ת

subplot(1,2,1); imshow(img0); title('ԭͼ��'); %��ʾԭͼ��
subplot(1,2,2);imshow(result_img);title('�Ҷȷ�תͼ��(��Ƭ)');
