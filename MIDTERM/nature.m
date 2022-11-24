clc;
clf;
clear all;
close all;

pkg load image;

nature_1=imread('C:/Users/rica alyssa/Desktop/bien/CPEN111/MIDTERM\nature.jpg');
imwrite(nature_1,'nature.png');
whos nature_1;

% grayscale
grayscale_nature = rgb2gray(nature_1);
whos grayscale_nature;

%Convert to Red
nature_red=nature_1;
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;
imwrite(nature_red,'nature_red.png');

%Convert to Green
nature_green=nature_1;
nature_green(:,:,1)=0;
nature_green(:,:,3)=0;
imwrite(nature_green,'nature_green.png');

%Convert to Blue
nature_blue=nature_1;
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;
imwrite(nature_blue,'nature_blue.png');

subplot(2,2,1),imshow(nature_1),title('Original Image');%Show original image.
subplot(2,2,2),imshow(nature_red),title('Red Image');%Show gray image.
subplot(2,2,3),imshow(nature_green),title('Green Image');%Show gray image.
subplot(2,2,4),imshow(nature_blue),title('Blue Image');%Show gray image.
