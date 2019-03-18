# matching problem
prob <- NULL
for (N in 1:50) 
{
  r <- NULL
  for (i in 1:5000) r[i] <- all(sample(N) != (1:N))
  prob[N] <- mean(r)
}

plot(prob, type = "b", xlab = "n")
abline(h = exp(-1), col = 2, lty = 2)