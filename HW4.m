%% MECE5397: Homework Assignment #4
% Name: Jordan Palmer
% Last Modified: 10/13/2020

%% Problem 1 - 

% House keeping commands
clc
clear
close all

% Set variables to use for constants
N = 10;
k = 1;
L = 1;
U0 = 1;
v = 1;
A = 1;
h = L/(N+1);

% function u = triAlgorithm()
%     α[1] = a[1] 
%     g[1] = f[1]
% 
%     for j = 2:N
%         print(j)
%         α[j] =a[j]− (b[j]/α[j−1])*c[j−1] 
%         g[j] =f[j]− (b[j]/α[j−1])*g[j−1] 
%     end
%     
%     u[N] =g[N]/α[N] 
% 
%     for k = 1:N-1
%         u[N−k] = (g[N−k]−c[N−k]*u[N−k+1]) / α[N−k]
%     end 
% end
%     
% 
% triAlgorithm()


% Make plots based of of chosen values
Plot1 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
Plot2 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2) + U0*(sinh(k*(L-x))/sinh(k*L));

% Plot functions
fplot(Plot1)
hold on
fplot(Plot2)

% Format plot
xlabel('Variable [x]')
ylabel('Function [y]')
title('Test Plot')
axis([-8,10,-10,10])
grid on