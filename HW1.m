%% HW part 1-6
clc;
clear all;
close all;
img= imread('SunnyLake.bmp');
I=(img(:,:,1)+img(:,:,2)+img(:,:,3))/3;
imshow(I);
figure;
h=histogram(I);
[i_1,j_1]=size(I);
for i = 1: i_1
    for j= 1: j_1
    if I (i,j) > 83
      BI(i,j)=1;
    else 
         BI(i,j)=0;   
    end
    end
end
figure;
imshow(BI);
%%  Noise Adding part 7
sig=1; V=(sig/256)^2    % 
I=imnoise(img,'gaussian',0,V);
I_1=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3;

sig=5; V=(sig/256)^2    % 
I=imnoise(img,'gaussian',0,V);
I_5=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3;

sig=10; V=(sig/256)^2    % 
I=imnoise(img,'gaussian',0,V);
I_10=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3;

sig=20; V=(sig/256)^2    % 
I=imnoise(img,'gaussian',0,V);
I_20=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3;

figure;
imshow(I_1);
title('SD=1');
figure;
imshow(I_5);
title('SD=5');
figure;
imshow(I_10);
title('SD=10');
figure;
imshow(I_20);
title('SD=20');

%% part 8-1
filter_9_1=ones(3)/9;

filtered_I_1 = filter_img(double(I_1),filter_9_1);
filtered_I_5 = filter_img(double(I_5),filter_9_1);
filtered_I_10 = filter_img(double(I_10),filter_9_1);
filtered_I_20 = filter_img(double(I_20),filter_9_1);

% iltered_I_1=conv2(double(I_1),filter_9_1,'same'); 

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg9 3x3');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg9 3x3');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg9 3x3');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg9 3x3');
%% part 8-2
filter_9_2=ones(5)/25;
filtered_I_1 = filter_img(double(I_1),filter_9_2);
filtered_I_5 = filter_img(double(I_5),filter_9_2);
filtered_I_10 = filter_img(double(I_10),filter_9_2);
filtered_I_20 = filter_img(double(I_20),filter_9_2);

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg9 5x5');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg9 5x5');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg9 5x5');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg9 5x5');
%% part 8-3
filter_12=[1,2,1;2,4,2;1,2,1];
filter_12=filter_12/24;
filtered_I_1 = filter_img(double(I_1),filter_12);
filtered_I_5 = filter_img(double(I_5),filter_12);
filtered_I_10 = filter_img(double(I_10),filter_12);
filtered_I_20 = filter_img(double(I_20),filter_12);

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg12');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg12');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg12');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg12');
%% part 9-1
filter_17_1=[-1,-1,-1;-1,8,-1;-1,-1,-1];

filtered_I_1 = filter_img(double(I_1),filter_17_1);
filtered_I_5 = filter_img(double(I_5),filter_17_1);
filtered_I_10 = filter_img(double(I_10),filter_17_1);
filtered_I_20 = filter_img(double(I_20),filter_17_1);

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg17_1');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg17_1');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg17_1');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg17_1');
%% part 9-2
filter_17_2=[.17,.67,.17;.67,-3.33,.67;.17,.67,.17];

filtered_I_1 = filter_img(double(I_1),filter_17_2);
filtered_I_5 = filter_img(double(I_5),filter_17_2);
filtered_I_10 = filter_img(double(I_10),filter_17_2);
filtered_I_20 = filter_img(double(I_20),filter_17_2);

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg17_2');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg17_2');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg17_2');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg17_2');
%% part 9-3
A=1.1;
filter_19=[-1,-1,-1;-1,9*A-1,-1;-1,-1,-1];

filtered_I_1 = filter_img(double(I_1),filter_19);
filtered_I_5 = filter_img(double(I_5),filter_19);
filtered_I_10 = filter_img(double(I_10),filter_19);
filtered_I_20 = filter_img(double(I_20),filter_19);

figure;
imshow(uint8(filtered_I_1));
title('SD=1 filtered wh pg19 A=1.1');
figure;
imshow(uint8(filtered_I_5));
title('SD=5 filtered wh pg19 A=1.1');
figure;
imshow(uint8(filtered_I_10));
title('SD=10 filtered wh pg19 A=1.1');
figure;
imshow(uint8(filtered_I_20));
title('SD=20 filtered wh pg19 A=1.1');
%% part 10
noise_img = imread('SP_Noisy_SunnyLake.png');
figure;
imshow(noise_img);
title('impulsive noisy image');
filtered_image=medfilt3(noise_img);
figure;
imshow(filtered_image);
title('median filtered image');


