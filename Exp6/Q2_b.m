clc;
clear;

A=[0 1 0 0;1 2 0 1;0 0 3 3;0 1 2 3];
x0=[1;1;0;1];

tol=10^-3;
k0=123456;
k=0;
error=k0-k;

while (abs(error)>tol)
 y=A*x0;
 k=max(abs(y));
 x=y/k;
 error=abs(k-k0);
 k0=k;
 x0=x;
end

disp(k)
disp(x)
