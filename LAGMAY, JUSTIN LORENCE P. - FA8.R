#FA8
#No. 1
# a. P(T ≤ 0.25) = P(time between submissions is at most 15 seconds);
# b. P(T > 0.5) = P(time between submissions is greater than 30 seconds);
# c. P(0.25 < T < 1) = P(time between submissions is between 15 seconds and 1 minute).
#lambda = 4 minutes
alpha_conversion <- 4


#15s/60s = 0.25
time1 <- 0.25

#30s/60s = 0.5
time2 <- 0.5

#60s = 1
time3 <- 1


#a
alpha_conversion <- 4
time1 <- 0.25
P_15 <- ppois(1, alpha_conversion*time1)
cat("The Probability is", P_15*100,"%.\n")
#b
alpha_conversion <- 4
time2 <- 0.5
P_30 <- ppois(1, alpha_conversion * time2)
cat("The Probability is", P_30*100, "%.\n")
#c
alpha_conversion <- 4
time3 <- 1
P_15_1 <- 1 - ppois(0,alpha_conversion*time1) - ppois(1,alpha_conversion*time3)
cat("The Probability is", P_15_1*100, "%.\n")

#No.3

# The average rate of job submissions in a computer center is 2 per minute. If it can be assumed that the number of submissions per minute has a Poisson distribution, calculate the probability that:
# a. more than two jobs will arrive in a minute;
# b. at least 30 seconds will elapse between any two jobs;
# c. less than 30 seconds will elapse between jobs;
# d. a job will arrive in the next 30 seconds, if no jobs have arrived in the last 30 seconds.

# CODES:

#a 
job_1 <- 1 - ppois(2, 2)
cat("The Probability is", job_1*100, "%.\n")
#b 
job_2 <- 1 - pexp(0.5, 2)
cat("The Probability is", job_2*100, "%.\n")
#c
job_3 <- pexp(0.5, 2)
cat("The Probability is", job_3*100, "%.\n")
#d
job_4 <- pexp(0.5, 2/60)
cat("The Probability is", job_4*100, "%.\n")

#No. 7
# A website receives an average of 15 visits per hour, which arrive following a Poisson distribution.
# a. Calculate the probability that at least 10 minutes will elapse without a visit.
# b. What is the probability that in any hour, there will be less than eight visits?
# c. Suppose that 15 minutes have elapsed since the last visit, what is the probability that a visit will occur in the next 15 minutes.
# d. Calculate the top quartile, and explain what it means.

#a
web_1 <- 1 - pexp(10, 15/60)
cat("The Probability is", web_1*100, "%.\n")
#b
#15 - 8 = 7 visits
web_2 <- ppois(7, 15)
cat("The Probability is", web_2*100, "%.\n")
#c
# There could be 2 ways to answer it.
next_visit <- 0.25
web_3 <- 1 - ppois(0, next_visit*15)  
# Or
pexp(15, next_visit)
cat("The Probability is", web_3*100, "%.\n")
#d
web_4 <- 15 
quartile <- qpois(0.75, web_4) 
quartile
cat("The quartile is", quartile, ". or fewer visits per hour which indicated 75% of the time, the number of visits is less than or equal to 18.\n")