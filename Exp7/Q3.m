clc;
clear;

x=[0,0.25,0.5,0.75];
y=[1,1.64872,2.71828,4.4816];
n=length(x);
p=0.43;

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