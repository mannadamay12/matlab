x=[0.1 0.2 0.4 0.5 1 2];
y=[21 11 7 6 5 6];

plot(x,y,'*')

n=length(x);

A=[sum(x) sum(1./x.^(1/2));sum((1./x.^(1/2))) sum(1./x.^(2))];
B=[sum(x.^(1/2).*y);sum(y./x)];

X=inv(A)*B;
hold on

a=X(1);
b=X(2);
f=(a.*x.^(1/2))+(b./(x));
plot(x,f)