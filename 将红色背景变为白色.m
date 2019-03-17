clc;clear;
for i=1:21
     filename = strcat('a (',int2str(i),').jpg');
    img=imread(filename);
    picture2Gray = rgb2gray(img); 
     grayEn = imfilter(picture2Gray, fspecial('average', 3));%均值平滑
    I = im2bw(grayEn,50/276);   %对图像自动二值化即可。 
   imwrite(I,strcat('.\result\',filename));
    % figure,imshow(I);
    disp(strcat('已完成第',num2str(i),'张'));
  

end
