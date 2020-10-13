function [a, b, c, f, N] = setup(N, U0, A, L, k)
    f=A;
    N=N;
    h = L/(N+1);
    a = (-(2+(k^2)*(h^2)))*ones(1,N);
    b = 1*ones(1,N-1);
    c = 1*ones(1,N-1);
    f = (h^2*f)*ones(1,N);
    f(1) = f(1)-U0;
end