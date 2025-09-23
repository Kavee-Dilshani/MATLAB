load fisheriris
X = meas;

[idx, C] = kmeans(X, 3);
gscatter(X(:,1), X(:,2), idx)
title('K-means Clustering (Sepal Features)')


Z = linkage(X, 'ward');
figure;dendrogram(Z)

%PCA
[coeff,score,~,~,explained] = pca(X);  %~ = ignore eigen vector and eigen value,  explained = explanation
figure; gscatter(score(:,1),score(:,2),species)
