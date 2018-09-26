param D := 6;
param K := 10;
var b {1..D,1..D} >= 0;
param weights{1..D};
param u{1..K,1..D};
param eta;

var r;
var x {i in 1..K};

minimize alpha:
	sum {d in 1..D} (weights[d] * (d*r + sum {j in 1..D} b[j,d]));
	
subject to a {j in 1..D,d in 1..D}:
	r + b[j,d] >= sum {k in 1..K} x[k]*u[k,j];
	
subject to b1:
	sum {i in 1..K} x[i] = 1;
	
subject to c{i in 1..K}:
	x[i] >= eta/K ;
	 
