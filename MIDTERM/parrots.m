clc;
clf;
clear all;
close all;

pkg load image;

parrot_1=imread('C:/Users/rica alyssa/Desktop/bien/CPEN111/MIDTERM\parrots.jpg');
whos parrot_1;
parrot_gray=rgb2gray(parrot_1);                           %Convert to gray-scale
subplot(1,2,1),imshow(parrot_1),title('Original Image');  %Show original image
subplot(1,2,2),imshow(parrot_gray),title('Gray Image');   %Show gray image
