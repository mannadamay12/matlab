x=[-2 -1 0 1 2];
y=[15 1 1 3 19];

plot(x, y, '*')

n=length(x);

A=[n sum(x);sum(x) sum(x.^2)];
B=[sum(y);sum(x.*y)];

F=inv(A)*B;
hold on

a=F(1);
b=F(2);
f=a+b*x;
plot(x,f)

C=[n sum(x) sum(x.^2);sum(x) sum(x.^2) sum(x.^3);sum(x.^2) sum(x.^3) sum(x.^4)];
D=[sum(y);sum(x.*y);sum(x.^2.*y)];

G=inv(C)*D;
hold on

c=G(1);
d=G(2);
e=G(3);
ff=c+d*x+e*(x.^2);
plot(x,ff)