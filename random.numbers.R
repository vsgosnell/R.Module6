#random numbers

#setting seeds for the same random stream in repeatable runs
#set.seed(###) will allow you to recreate the same values when
#randomly sampling or randomly generating values


#random number generator
# rbinom() generates binomial or Bernoulli random variables. 
# The binomial random variable X is the number of “successes” in the n trials. 
# The notation: X has a B(n, p) distribution, where n is the number of trials 
# and p is the success probability on each trial.
# The example from our textbook page: 204. 

x <- rbinom(100000, 5, 0.5)
mean(x >= 5)
#produces a different value than powerpoint
# We first generate 100,000 variants from a binomial distribution 
# with five trails with a success of 0.5. 
# We then determine which of them has a value of 4 or 5, 
# resulting in a Boolean vector of the same length as x. 
# The TRUE and FALSE values in the vector are treated as 1s and 0’s by mean(), 
# and it provides us the estimated probability. The reason for that is that since 
# the average of a bunch of 1s and 0s is the proportion of 1s. 
# Our textbook provides anther example which it finds E[max (X,Y)], 
# where the expected value of maximum of independent N (0,1) that is random variables X and Y
# See the result on page 204.     


