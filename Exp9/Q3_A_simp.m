f= @(x) (cos(x))^2;
a = - 0.25 ;
b = 0.25;
N = 10;
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

