



clc
close all
warning off all

a=imread("img.jpg");





red = a;
red(:,:,1);
red(:,:,2)=0;
red(:,:,3)=0;

green = a;
green(:,:,1)=0;
green(:,:,2);
green(:,:,3)=0;

blue = a;
blue(:,:,1)=0;
blue(:,:,2)=0;
blue(:,:,3);

red = rgb2gray(red);
green = rgb2gray(green);
blue = rgb2gray(blue);



y="y";
while y=="y"

figure(1)
subplot(2,3,1)
imshow(red)
subplot(2,3,2)
imshow(green)
subplot(2,3,3)
imshow(blue)
subplot(2,3,4)
bar(imhist(red), "red")
subplot(2,3,5)
bar(imhist(green), "green")
subplot(2,3,6)
bar(imhist(blue), "blue")




max = input("Ingrese el valor MAXIMO:");
min = input("Ingrese el valor minimo:");


disp(red)
red = comp_ex(red, max, min);
disp(red)
green = comp_ex(green, max, min);
blue = comp_ex(blue, max, min);


figure(2)
subplot(2,3,1)
imshow(red)
subplot(2,3,2)
imshow(green)
subplot(2,3,3)
imshow(blue)
subplot(2,3,4)
bar(imhist(red), "red")
subplot(2,3,5)
bar(imhist(green), "green")
subplot(2,3,6)
bar(imhist(blue), "blue")


figure(3)
imshow(red+blue+green);
y = input("Desea comprimir/Expandir de nuevo? [y/n]", "s");
end
disp("Fin del programa")











