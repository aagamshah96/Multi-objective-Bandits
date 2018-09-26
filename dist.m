function cost=dist(i,D)
    cost = zeros(1,D);
    if i==1
        cost(1,1)= 25 - normrnd(17,1);
        cost(1,2)= 20 - normrnd(12,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(8,0.25);
        cost(1,5) = 1;
        cost(1,6) = unidrnd(10);
    elseif i==2
        cost(1,1)= 25 - normrnd(14,1);
        cost(1,2)= 20 - normrnd(10,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(8,0.25);
        cost(1,5) = 1;
        cost(1,6) = unidrnd(10);
    elseif i==3
        cost(1,1)= 25 - normrnd(12,1);
        cost(1,2)= 20 - normrnd(10,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(8,0.25);
        cost(1,5) = 2;
        cost(1,6) = unidrnd(10);
    elseif i==4
        cost(1,1)= 25 - normrnd(20,2);
        cost(1,2)= 20 - normrnd(10,2);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(10,0.25);
        cost(1,5) = 1;
        cost(1,6) = unidrnd(10);
     elseif i==5
        cost(1,1)= 25 - normrnd(15,1);
        cost(1,2)= 20 - normrnd(10,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(7,0.25);
        cost(1,5) = 1;
        cost(1,6) = unidrnd(10);
     elseif i==9
        cost(1,1)= 25 - normrnd(6,1);
        cost(1,2)= 20 - normrnd(5,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(8,0.25);
        cost(1,5) = 3;
        cost(1,6) = unidrnd(10);
     elseif i==6
        cost(1,1)= 25 - normrnd(4,1);
        cost(1,2)= 20 - normrnd(4,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(8,0.25);
        cost(1,5) = 5;
        cost(1,6) = unidrnd(10);
    elseif i==7
        cost(1,1)= 25 - normrnd(5,1);
        cost(1,2)= 20 - normrnd(5,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(9,0.25);
        cost(1,5) = 4;
        cost(1,6) = unidrnd(10);
    elseif i==8
        cost(1,1)= 25 - normrnd(7,1);
        cost(1,2)= 20 - normrnd(6,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(9,0.25);
        cost(1,5) = 3;
        cost(1,6) = unidrnd(10);
    else
        cost(1,1)= 25 - normrnd(15,1);
        cost(1,2)= 20 - normrnd(15,1);
        cost(1,3) = unifrnd(0,10);
        cost(1,4) = normrnd(10,0.25);
        cost(1,5) = 2;
        cost(1,6) = unidrnd(10);
    end
    
end