clc; clear all; % �������ڵ����ݣ���������ռ��е����б���
close all; %�ر����е�Figure����

h=280;  w=280;
out_gray = 1.0; 

img = zeros(h, w); % ��ʼ��ͼ�����

% ����4����ͼ
for num = 1:4
    for i = 1:h
        for j = 1:w
            img(i,j) = out_gray;  % ������ͼ��������ֵ
        end
    end
    out_gray = out_gray + 70.0;

    for i = 93:189          % �ڷ���Ϊ96*96
        for j = 93:189
            img(i,j) = 100;  % ��ͼ���м䷽�鸳������ֵ100
        end
    end

    f = uint8(img);
    subplot(2,2,num); % ����2x2���ֵ���ͼ
    imshow(f);
    title(['��ֵΪ100/', num2str(out_gray-70), '��ͬʱ�Ա�ЧӦͼ��']);
end