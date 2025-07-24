I = imread('./images/Lenna.png');


h = histogram(I);
H = cumulativeHist(h);
J = brightness(I, 100);
K = modifiedAutoCon(I);


subplot(1,4,1);imshow(rgb2gray(I));
subplot(1,4,2);bar(h);
subplot(1,4,3); bar(H);
subplot(1,4,4); imshow(K);