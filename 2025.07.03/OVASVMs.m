function accuracy = OVASVMs(data,N)

[traininData,trData]  =  splitData(data);
[trData,valData] = splitData(trainData);

A =1:N;
 
C = [2^-10 2^-9 2^-8 2^-7 2^-6 2^-5 2^-4 2-^-3 2^-2 2^-1 2^0 2^1 2^2 2^3 2^4 2^5 2^6 2^7 2^8 2^9 2^10];
% C = 2^-10:  :2^10
accuracy =[];


