f= @(x) (sqrt(1+(4*x^2/(2+x^4+2*x^2)^2)));
a = 0;
b = 2;
N = 4;
h= (b-a)/N;
sum = 0;

for i = 1:N-1
    x=a+i*h;
    if rem(i,2)==0
        sum = sum+2*f(x);
    else
        sum = sum+4*f(x);
    end
end

sum = sum+f(a)+f(b);
ans = sum*(h/3)