K=10;   %number of arms
D=6;    %number of objectives
delta = 1/K;
T=10;
alpha=zeros(K,1);
myu=zeros(K,D);
W = zeros(1,D);
d=0.8;
N = zeros(K,1);
GP = zeros(1,T);
MA = zeros(K,T);
W(1,1) = 80;			%parametric weights
W(1,2) = 7;
W(1,3) = 5;
W(1,4) = 5;
W(1,5) = 2;
W(1,6) = 1;
% Assuming that the loss of each arm is taken from a Bernoulli distribution
% with the probability p for the ith arm as i (for all D objectives).
% pulls each arm once initially
for i=1:K
    alpha(i,1)=1/K;
    N(i,1)=1;
    %loss = random('bino',1,i*delta,[1,D]);
    loss = dist(i,D);
    myu(i,:) =  loss;
end

for t=1:T
    arm = randsample( K, 1, true, alpha);
    %loss = random('bino',1,arm*delta,[1,D]);
    loss = dist(arm,D);
    myu(arm,:) = ((myu(arm,:)*N(arm,1)) + loss)/(N(arm,1)+1);
    N(arm,1)=N(arm,1) + 1;
    X = myu'*alpha;
    G = W*X;
    %eta = ((power(2,0.5))/(1- (1/power(K,0.5))))*(power((log(2/d)/t),0.5))
    %eta = 0.077;
    eta = ((power(2,0.5))/(1- 1/power(K,0.5)))*(power((log(2/d)/(t+K)),0.5));

    temp = momabmodel('/home/',myu,eta);
    for i=1:temp.getNumRows()
        row = temp.getRowByIndex(i);
        pd=size(row);
        if row{2}<=0.00000000000001    
            alpha(row{1},1)=0;
        else
            alpha(row{1},1)=row{2};
        end
    end
    if t==1
        MA(1:K,1) = alpha;
    else
        MA(1:K,t) = (MA(1:K,t-1)*(t-1) + alpha)/t;
    end
    GP(1,t)=W*myu'*MA(1:K,t);
%     if t>1 && GP(1,t)>GP(1,t-1)
%         break;
%     end
end
t=1:T;
plot(t,GP(1,1:T));
hold on;
