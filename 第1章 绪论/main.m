clc; clear all; % �������ڵ����ݣ���������ռ��е����б���
close all; %�ر����е�Figure����

img0=imread('../images/women_gray.jpg'); % ��ͼ���ļ��е�8����
f=double(img0); % ��uint8��ʽ��ͼ������ת����˫���ȸ�ʽ������
[h, w]=size(f); % ȡͼ�����е��������ߣ�h����������w

max=0.0; min=256.0; avg=0.0; %����ֵ
for i=1:h
    for j=1:w
        if f(i,j)<min
            min=f(i,j);  %����Сֵ
        end
        if f(i,j)>max
            max=f(i,j);  %�����ֵ
        end
        avg = avg+f(i,j);  %����Ҷ�ֵ���ۼӺ�
    end
end

avg=uint8(avg/(h*w));  %˫���ȸ�ʽ��ƽ���Ҷ�ֵת����8λ������ʽ����
fprintf('������:\n'); %����������������
fprintf('ͼ�����ص����Ҷ�ֵ��%f\n',max);
fprintf('ͼ�����ص���С�Ҷ�ֵ��%f\n',min);
fprintf('ͼ�����ص�ƽ���Ҷ�ֵ��%f\n',avg);
