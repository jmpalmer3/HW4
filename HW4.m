%% MECE5397: Homework Assignment #4
% Name: Jordan Palmer
% Last Modified: 10/13/2020

%% Problem 1 - 

% House keeping commands
clc
clear
close all

% Set variables to use for constants
N = 3;
k = 1;
L = 1;
U0 = 1;
v = 1;
A = 1;
h = L/(N+1);
f = A;


matrix = [3 -1 0; -1 3 -1; 0 -1 3];
f = [-1 7 7]

% function u = triAlgorithm(matrix)
    alpha(1) = matrix(1);
    g(1) = f(1);

    for j = 2:N
        alpha(j) = matrix(j,j)-(matrix(j,j-1)/matrix(j-1,j-1))*matrix(j-1,j);
        g(j) = f(j) - (matrix(j,j-1)/matrix(j-1,j-1))*g(j-1);
    end
    
     u(N) = g(N)/alpha(N); 

    for k = 1:N-1
        u(N-k) = (g(N-k)-matrix(N-k,N-k+1)*u(N-k+1)) / alpha(N-k)
    end 
% end
%     
% 
% triAlgorithm()


% Make plots based of of chosen values
Plot1 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
Plot2 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2) + U0*(sinh(k*(L-x))/sinh(k*L));

k = 10;
Plot3 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
Plot4 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2) + U0*(sinh(k*(L-x))/sinh(k*L));

% Plot functions
subplot(1,2,1);
fplot(Plot1);
hold on
fplot(Plot2);

% Format plot
xlabel('Variable [x]')
ylabel('Function [y]')
title('Test Plot')
axis([-8,10,-1,10])
grid on

% Plot second K values
subplot(1,2,2);
fplot(Plot3)
hold on
fplot(Plot4)


% Format plot
xlabel('Variable [x]')
ylabel('Function [y]')
title('Test Plot')
axis([-8,10,-1,10])
grid on