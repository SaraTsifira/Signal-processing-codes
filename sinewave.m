clc;
clear;
close all;
f=100;
fs=300;
T=1/fs;
t=0:T:1-T;
y=sin(2*pi*f*t);
plot(t,abs(y));
figure;
y1=fft(y);
y2=fftshift(y1);
x=(fs/2)*linspace(-1,1,fs);
plot(x,abs(y2))