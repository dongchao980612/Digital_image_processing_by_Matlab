% ͼ��ˮƽ����matlab����horizontal_mirroring33.m��
clc; clear; close all;

img0=imread('../images/lena.jpg');

[h,w]=size(img0);  %��ȡ���������h������w

for x0=1:h    %��ԭͼ����(ƫ)�ұߵ����Ƶ���ͼ�����(ƫ)���
   for y0=1:w
       result_img(x0,w-y0+1)=img0(x0,y0);
   end
end

subplot(1,2,1); imshow(img0); title('ԭͼ��'); %��ʾԭͼ��
subplot(1,2,2);imshow(result_img);title('ˮƽ������ͼ��');
