p <- 49/101 # 0.5 vs 0.49

# fair budget
N <- 100
i <- init <- 50

q <- 1 - p

# Analytic Solution
{
  prob1 <-  if  (p == 0.5)  i/N 
  else  (1 - (q/p)^init)/ (1-(q/p)^N)
}

# Numerical Solution
n.sim <- 1000
value <- NULL
for (iter in 1:n.sim)
{
  set.seed(iter)
  i <- init
  j <- N-i
  while (i > 0 & j > 0)
  {
    result <- rbinom(1, 1, p)
      if (result == 1) i <- i+1
    else i <- i-1
    j <- N-i
    
  }
  if (i == 0) {
    value[iter] <- 1
  } else if (j == 0) value[iter] <- 0
}
prob2 <- 1 - mean(value)

# wining probabilty
cat("analytic solution :", prob1, cat = "\n") 
cat("numerical solution:", prob2, cat = "\n") 
