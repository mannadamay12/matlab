clc;
clear;

x=[1,1.5,2,2.5];
y=[2.7183,4.4817,7.3891,12.1825];
n=length(x);
p=2.25;

for i=1:n
    F(i,1)=y(i);
end

for i=2:n
    for j=i:n
        F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
    end
end

for i=1:n
    pr(i)=1;
    for j=1:(i-1)
        pr(i)=(pr(i))*(p-x(j));
    end
end

sum=0;
for i=1:n
    sum=sum+(F(i,i)*pr(i));
end
disp(sum)