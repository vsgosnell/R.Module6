#simulation function in R
# rbinom() can generate binomial or Bernoulli random variates
# Let’s create 100,000 variates from a binomial distribution with 5 trials and success probability of 0.5. 
# True or False are are treated as 1 and 0 for mean()  allowing us to estimate probability. 
#there was no example code given for this


# If we wanted to generate 100,000 pairs, found the maximum for each, and averaged those maxima 
# to obtain our estimated expected value, we would use code such as:

sum = 0
nreps = 100000
for (I in 1:nreps) {
  xy = rnorm(2) #generate 2 N (0,1)s
sum = sum + max(xy)
}

print(sum/nreps)
#result prints less digits than powerpoint -> probably a decimal function


