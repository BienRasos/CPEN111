clc;
clear all;
close all;

pkg load image;

OrigImg = imread('fruits.png');  % Read the image information
subplot(231);
imshow(OrigImg);
title('Original Image')

OrigImg1 = imresize(imresize(OrigImg,1/16),16);
subplot(232);
imshow(OrigImg1);
title('At 16x16 resolution');
imwrite(OrigImg1,'fruits2.png');

chg_hsv = rgb2hsv(OrigImg);    % Change the colore image to HSV
subplot(233)
imshow(chg_hsv);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_hsv,'fruits3.png');
