pkg load control

A = [0 1; -5 -6];
B = [0; 1];
Q = [1000000 0; 0 1];
R = 50;
[K, P] = lqr(A, B, Q, R);

x0 = [1; 0]
t = 0: 0.1: 4
i = 0
for n = t
i = i + 1
x = expm((A - B*K) * n) * x0
x1(i) = x(1)
x2(i) = x(2)
endfor
plot(t, x1, t, x2)