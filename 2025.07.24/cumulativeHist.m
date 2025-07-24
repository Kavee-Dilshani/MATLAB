function H = cumulativeHist(h)
    
    K = 256;
    H = zeros(1,K);
    H(1) = h(1);
    
    for i=2:K
        a = h(i);
        H(i) = H(i-1) + a;
        
    end