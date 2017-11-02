close all
clear all
source = imread('/home/pi/Pictures/red.jpg');
target = imread('/home/pi/Pictures/sea_shore2.jpg');
[target_M,target_N,target_d] = size(target);
figure
subplot(2,2,1)
imshow(target),title('target Image');
subplot(2,2,2)
imshow(source), title('source image');
source = cast(source,'double');
target = cast(target,'double');

%==========RGB to LAB==============================================
source_LAB = rgb2lab(source);
target_LAB = rgb2lab(target);

%===========Color Transfer Process==============
source_LAB = reshape(source_LAB(:),[],3);
target_LAB = reshape(target_LAB(:),[],3);

source_LAB_mean = mean(source_LAB); %Find Mean
target_LAB_mean = mean(target_LAB);

source_LAB_std = std(source_LAB);%FInd Standard Deviation
target_LAB_std = std(target_LAB);

target_LAB = target_LAB-target_LAB_mean; %subtract mean from target
target_LAB = (target_LAB_std./source_LAB_std) .* target_LAB; %scale it by ratio of std
target_LAB = target_LAB + source_LAB_mean; 

result_LAB = reshape(target_LAB(:),target_M, target_N,[]);

%==========Get back to RGB==========================================
result_RGB = lab2rgb(result_LAB);

%===========Cap the values b/w 0 to 255===========================
result_RGB(result_RGB<0) = 0;
result_RGB(result_RGB>255) = 255;

subplot(2,2,[3,4])
imshow(uint8(result_RGB)),title('Result Image');
