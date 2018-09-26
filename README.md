# Multi-objective-Bandits
Implementation of the paper "Multi-objective Bandits: Optimizing the Generalized Gini Index" by Robert Busa-Fekete. An extension involves the placement problem where companies are associated with various factors and the optimal company for the candidate is to be chosen.

There are two folders namely, 'Placement Problem' and 'Synthetic Experiment'.


Both contain codes for two algorithms :- MO-LP and MO-OGDE

Files: 

momab.m		:-	MO-OGDE algorithm
simx.m		:-	Taking a projection to a convex set for forced exploration
dist.m		:-	Cost vector defintions for various companies (Not valid for Synthetic experiment)
molp.m		:-	MO-LP algorithm
momabmodel.m 	:-	Accesses the AMPL API to solve linear programs
molp.mod 	:-	AMPL program to solve the linear program
molp.dat	:-	Parametric data accessed by the molp.mod file
	

Softwares used:
MATLAB and AMPL (for solving linear programs)


Project by: Aagam Shah (201464155) & Kushagra Chandak (201464106)
