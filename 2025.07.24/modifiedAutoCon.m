function I = modifiedAutoCon(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

h = histogram(I);
H = cumulativeHist(h);
[M, N] = size(I);
amin = 0;
amax = 255;

qlow = 0.005;
qhigh= 0.005;
alow = min(find(H>=M*N*qlow));
ahigh = max(find(H<=M*N*(1-qhigh)));

for i = 1:M
    for j = 1:N
        a = I(i,j);
        if a < alow
            I(i,j) = amin;
        elseif a>ahigh
            I(i,j) = amax;
            
        else
            I(i, j) = amin + (a-alow) * ((amax-amin)/(ahigh - alow)); 
        end
    end
end

