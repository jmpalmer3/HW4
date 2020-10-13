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

% setup for calculated matrix values
a = (-(2+(k^2)*(h^2)))*ones(1,N);
b = 1*ones(1,N-1);
c = 1*ones(1,N-1);
f = (h^2*f)*ones(1,N);
f(1) = f(1)-U0;


% call algorithm function with input values
u = triAlgorithm(a, b, c, f, N);

% Make plots based of of chosen values
Plot1 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
Plot2 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2) + U0*(sinh(k*(L-x))/sinh(k*L));

% k = 10;
% Plot3 = @(x) (((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/k^2) + U0*((sinh(k*(L-x)))/sinh(k*L));
% Plot4 = @(x) ((cosh(k*x)/cosh(k*L))-1)*(A/k^2) + U0*(sinh(k*(L-x))/sinh(k*L));

x = (1:length(u))/N;

% Plot functions
subplot(2,2,1);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title('Dirichlet type [N=10,k=1]')
axis([0,1,-1,2])
legend('Theoretical','Computed')
grid on







% setup for calculated matrix values
f=A;
N=20;
h = L/(N+1);
a = (-(2+(k^2)*(h^2)))*ones(1,N);
b = 1*ones(1,N-1);
c = 1*ones(1,N-1);
f = (h^2*f)*ones(1,N);
f(1) = f(1)-U0;

u = triAlgorithm(a, b, c, f, N);
x = (1:length(u))/N;

subplot(2,2,2);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title('Dirichlet type [N=20,k=1]')
axis([0,1,-1,2])
legend('Theoretical','Computed')
grid on



% setup for calculated matrix values
f=A;
N=40;
h = L/(N+1);
a = (-(2+(k^2)*(h^2)))*ones(1,N);
b = 1*ones(1,N-1);
c = 1*ones(1,N-1);
f = (h^2*f)*ones(1,N);
f(1) = f(1)-U0;

u = triAlgorithm(a, b, c, f, N);
x = (1:length(u))/N;

subplot(2,2,3);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title('Dirichlet type [N=40,k=1]')
axis([0,1,-1,2])
legend('Theoretical','Computed')
grid on




% setup for calculated matrix values
f=A;
N=80;
h = L/(N+1);
a = (-(2+(k^2)*(h^2)))*ones(1,N);
b = 1*ones(1,N-1);
c = 1*ones(1,N-1);
f = (h^2*f)*ones(1,N);
f(1) = f(1)-U0;

u = triAlgorithm(a, b, c, f, N);
x = (1:length(u))/N;

subplot(2,2,4);
fplot(Plot1);
hold on
plot(x,u)

% Format plot
xlabel('Length [x]')
ylabel('Function [u]')
title('Dirichlet type [N=80,k=1]')
axis([0,1,-1,2])
legend('Theoretical','Computed')
grid on




% % Plot second K values
% subplot(1,2,2);
% fplot(Plot3)
% hold on
% fplot(Plot4)

% % Format plot
% xlabel('Variable [x]')
% ylabel('Function [y]')
% title('Test Plot')
% axis([0,1,-1,2])
% grid on

