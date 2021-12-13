a=[4.63 -1.21 3.22 2.22;
-3.07 5.48 2.11 -3.17;
1.26 3.11 4.57 5.11];

x=[0 0 0];
n=3;
tol=0.001;
err=[1 1 1];

while (norm(err, inf)>=tol)
    xo=x;
    for i=1:n
        sum=0;
    for j=1:n
        if(i~=j)
            sum=sum+a(i,j)*x(j);
        end
    end
    x(i)=(a (i,n+1)-sum)/a (i,i);
    err(i)=abs (x(i)-xo(i));
    end
end
disp(x)
