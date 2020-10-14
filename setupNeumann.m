function [a, b, c, f, N] = setupNeumann(N, v, A, L, k)
    f=A;
    h = L/(N+1);
    a = (-(2+(k^2)*(h^2)))*ones(1,N);
    b = 1*ones(1,N-1);
    c = 1*ones(1,N-1);
    c(1) = 2;
    f = (h^2*f)*ones(1,N);
    f(1) = f(1)+2*h*v;
end