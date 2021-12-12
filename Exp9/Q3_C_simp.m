f= @(x)exp(1)^(-(x^2))*cos(x);
a = -1;
b = 1;
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