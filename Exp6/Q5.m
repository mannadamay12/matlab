clc;
clear;

x =[0 pi/4 pi/2 (3*pi)/4 pi (5*pi)/4 (3*pi)/2 (7*pi)/4 (2*pi)];
f=[0 0.5 1 0.5 0 0.5 1 0.5 0 ];
p=0.5;
n=9;
for i=1:n
    l(i)=1;
    for j=1:n
        if i~=j
        l(i)=((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end

sum=0;
for i=1:n
    sum =sum+l(i)*f(i);
end
disp(sum)