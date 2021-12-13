clear ;
clc;

sum=0;
X=[0,8,16,24,32,40];
Y=[14.321,11.843,9.870,8.418,7.305,6.413];
x=15;
n=6;
for i=1:n
 l(i)=1;
 for j=1:n
 if i~=j
 l(i)=l(i)*((x-X(j))/(X(i)-X(j)));
 end
 end
end
for i=1:n
 sum=sum+(l(i)*Y(i));
end
disp(sum)