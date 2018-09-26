function x = simx(y,k)

m = length(y);

s = sort(y,'descend'); 
rho=-1;
p=1-(k*m);
for i=1:m
    sum=0;
    for j=1:i
        sum=sum+s(j);
    end
    if s(i)+((1/i)*(p-sum)) > k
        rho=max(rho,i);
    end
end
sum=0;
for i=1:rho
    sum=sum+s(i);
end
l = (1/rho)*(p-sum);
x = max(y+l,0)+k;

return;