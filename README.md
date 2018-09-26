# Multi-objective-Bandits
Implementation of the paper "Multi-objective Bandits: Optimizing the Generalized Gini Index" by Robert Busa-Fekete. An extension involves the placement problem where companies are associated with various factors and the optimal company for the candidate is to be chosen.

There are two folders namely, 'Placement Problem' and 'Synthetic Experiment'.


Both contain codes for two algorithms :- MO-LP and MO-OGDE

Files: 

momab.m		:-	MO-OGDE algorithm <br />
simx.m		:-	Taking a projection to a convex set for forced exploration <br />
dist.m		:-	Cost vector defintions for various companies (Not valid for Synthetic experiment) <br />
molp.m		:-	MO-LP algorithm <br />
momabmodel.m 	:-	Accesses the AMPL API to solve linear programs <br />
molp.mod 	:-	AMPL program to solve the linear program <br />
molp.dat	:-	Parametric data accessed by the molp.mod file <br />
	

Softwares used:
MATLAB and AMPL (for solving linear programs)


Project by: Aagam Shah & Kushagra Chandak
