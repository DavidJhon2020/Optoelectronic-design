clear all
close all;

%% 读取图像
% csvname = '2.csv';
% 
% data = csvread(csvname);
% data1 = mat2gray(data);
% imshow(data1,[])

img_name = '3.png';

im = imread(img_name);
% imwrite(im(2:end,:,:),'3.png');
figure;
subplot(231);
imshow(im);
title('原始彩色图');
% 灰度化
if size(im,3)==3
    gray = rgb2gray(im);
else
    gray = im;
end
subplot(232);
imshow(gray);
title('灰度图');
% 二值化
BW = im2bw(gray);
subplot(233);
imshow(BW);
title('二值分割图');



%% 圆检测
% 连通域
[L,num] = bwlabel(BW,8);

[r,c] = find(L == num);
r_max = max(r);
r_min = min(r);
c_max = max(c);
c_min = min(c);

r_center = round((r_max+r_min)/2);
c_center = round((c_max+c_min)/2);

% 半径
% 求边缘
BW1=edge(BW,'Roberts');
subplot(234);
imshow(BW1);
title('边缘图');
% imshow(BW1);
[r_BW1,c_BW1] = find(BW1==1);

nn = length(r_BW1);

d = zeros(nn,1);
for i = 1:nn
    d(i) = sqrt((r_BW1(i)-r_center)^2+(c_BW1(i)-c_center)^2);
    
end
dd = mean(d);

subplot(235);
imshow(gray);
hold on;
my_plot( c_center,r_center,dd );
hold off;
title('标记圆的图');


% 求能量
[r,c] = size(gray);
mask = zeros(r,c);
for i = 1:r
    for j = 1:c
        dp = sqrt((i-r_center)^2+(j-c_center)^2);
        if dp < dd
            mask(i,j) = 1;
        end
    end
end

% 对灰度图进行掩膜
gray_mask = double(gray).* mask;

subplot(236);
imshow(mask);
title('掩膜图');
e = sum(gray_mask(:));


zuobiao = ['(',num2str(r_center),',',num2str(c_center),')'];
display(['圆心坐标是：',zuobiao]);
display(['半径是：',num2str(dd)]);
display(['能量是：',num2str(e)]);
