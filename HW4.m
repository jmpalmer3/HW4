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
f = A;



[a, b, c, f, N] = setupNeumann(N, v, A, L, k);

% call algorithm function with input values
u = triAlgorithm(a, b, c, f, N);




%% Plotting 

%Make plots based of of chosen values
%Plot1 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
Plot1 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2)-(v/k)*(sinh(k*(L-x))/cosh(k*L));

x = (1:length(u))/N;



%% Plot 1
subplot(2,2,1);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title(['Neumann type [N=',num2str(N),' k=',num2str(k),']'])
axis([0,1,-2,1])
legend('Theoretical','Computed')
grid on

%% Plot 2

% setup for calculated matrix values
N=2*N;
[a, b, c, f, N] = setupNeumann(N, v, A, L, k);
u = triAlgorithm(a, b, c, f, N)
x = (1:length(u))/N;

subplot(2,2,2);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title(['Neumann type [N=',num2str(N),' k=',num2str(k),']'])
axis([0,1,-2,1])
legend('Theoretical','Computed')
grid on

%% Plot 3

% setup for calculated matrix values with new N value
N = 2*N;
[a, b, c, f, N] = setupNeumann(N, v, A, L, k);
u = triAlgorithm(a, b, c, f, N);
x = (1:length(u))/N;

subplot(2,2,3);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title(['Neumann type [N=',num2str(N),' k=',num2str(k),']'])
axis([0,1,-2,1])
legend('Theoretical','Computed')
grid on


%% Plot 4

% setup for calculated matrix values with new N value
N = 2*N;
[a, b, c, f, N] = setupNeumann(N, v, A, L, k);
u = triAlgorithm(a, b, c, f, N);
x = (1:length(u))/N;

subplot(2,2,4);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title(['Neumann type [N=',num2str(N),' k=',num2str(k),']'])
axis([0,1,-2,1])
legend('Theoretical','Computed')
grid on


