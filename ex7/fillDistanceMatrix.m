function distance_matrix =fillDistanceMatrix(X,X1,distance_matrix,centroids)
k=1;
  for i=1:size(centroids,1)
     sum=0;
     for j=1:size(centroids,2)
          sum=sum+(X(X1,j)-centroids(i,j))^2;
     end
     if(k< size(X,1))
        distance_matrix(X1,k)=sum;
     end
        k=k+1;
  end
end