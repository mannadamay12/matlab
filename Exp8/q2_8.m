x=[2 3 4 5];
y=[27.8 62.1 110 161];

plot(x,y,'*')

n=length(x);

X=log(x);
Y=log(y);

A=[n sum(X); sum(x) sum(X.^2)];
B=[sum(Y); sum(X.*Y)];

m=X(1);
n=X(2);

a=exp(m);
b=exp(n);
hold on

f=a.*x.^b;
plot(x,f)