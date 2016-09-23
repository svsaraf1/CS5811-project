I=imread('five_1.jpg');

figure
imshow(I);
title('original image');

I = im2bw(I);
I = imresize(I,[150,140]);
figure
imshow(I);
title('b/w image');

I = edge(I,'sobel');
figure
imshow(I);
title('edge detection')

[hog,Vis] = extractHOGFeatures(I);
figure
plot(Vis);
title('hog features')