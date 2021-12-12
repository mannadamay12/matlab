f= @(x) (cos(x))^2;
a = - 0.25 ;
b = 0.25;
N = 4;
h= (b-a)/N;
sum = 0;

for i=1:(N-1)
    x=a+h*i;
    sum=sum+2*f(x);
end

sum = sum+f(a)+f(b);
ans = sum*(h/2)