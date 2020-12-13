clc; clearvars; close all;

I=imread('Lena.tif');
In=imnoise(I, 'salt & pepper', .5);
tic
Id=NAHAT(In);
toc
imshow([I In Id]);

psnr(In,I), ssim(In,I)
psnr(Id,I), ssim(Id,I)