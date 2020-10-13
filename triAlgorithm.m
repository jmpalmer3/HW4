function u = triAlgorithm(a, b, c, f, N)
    alpha(1) = a(1);
    g(1) = f(1);

    for j = 2:N
        alpha(j) = a(j)-(b(j-1)/alpha(j-1))*c(j-1);
        g(j) = f(j) - (b(j-1)/alpha(j-1))*g(j-1);
    end
    
     u(N) = g(N)/alpha(N); 

    for k = 1:N-1
        u(N-k) = (g(N-k)-c(N-k)*u(N-k+1)) / alpha(N-k);
    end 
end

% Function for matrix input 

% function u = triAlgorithm(matrix)
%     alpha(1) = matrix(1);
%     g(1) = f(1);
% 
%     for j = 2:N
%         alpha(j) = matrix(j,j)-(matrix(j,j-1)/alpha(j-1))*matrix(j-1,j);
%         g(j) = f(j) - (matrix(j,j-1)/alpha(j-1))*g(j-1);
%     end
%     
%      u(N) = g(N)/alpha(N); 
% 
%     for k = 1:N-1
%         u(N-k) = (g(N-k)-matrix(N-k,N-k+1)*u(N-k+1)) / alpha(N-k);
%     end 
% end
%     
% triAlgorithm()