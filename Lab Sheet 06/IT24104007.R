setwd("C:\\Users\\DELL\\OneDrive\\Desktop\\IT24104007")
getwd


#Question 1

#part 1 
#binomial Distribution
n <- 50
p <- 0.85

#part 2

#probability that at least 47 students passed (P(X >= 47))
p_at_least_47 <- 1 - pbinom(46, size=50, prob=0.85)
p_at_least_47  # Print the result

#Question 2

#part 1 

#number of calls a call center recieves per hour

#part 2

#poisson Distribution
#lambda = 12

#part 3

#probability that exactly 15 calls are received (P(X = 15))
p_exactly_15 <- dpois(15, lambda=12)
p_exactly_15
























