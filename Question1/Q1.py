from __future__ import division
import numpy as np
import random 
import heapq

# calculating mean and std of M-L
# can change T and N for the two scenarios

T=32
N=4
N_iterations= 100000
MLdiff= []

for j in range (0,N_iterations):
	M=1.0
	L=1.0
	x= []
	for i in range (0,T):
		x.append(random.uniform(1, 10))

	largest= heapq.nlargest(N, x) 
	for k in range (0,N): 
		M *= largest[k]

	for l in range (1,N+1): 
		L *= x[T-l]

	MLdiff.append(M-L)

print np.average(MLdiff)
print np.std(MLdiff)


#calculating conditional probability 
# P(A|B)= P(A and B)/P(B)
#can change a and b for the two scenarios

count_AandB=0
count_B=0

a= 2048.0
b= 4096.0

for m in range (0,N_iterations):
	if MLdiff[m] <= b:
		count_B += 1

for n in range (0,N_iterations):
	if (MLdiff[n] >= a and MLdiff[n] <= b):
		count_AandB += 1

condProb= count_AandB/count_B
print condProb
















