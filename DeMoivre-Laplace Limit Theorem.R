######################################
# The DeMoivre-Laplace Limit Theorem #
######################################
set.seed(1)
p <- 0.5
nn <- c(20, 50, 200, 10000)

a <- -1
b <-  1

par(mfrow = c(2,2))
for (k in 1:length(nn))
{
  n <- nn[k]
  X <- rbinom(10000, n, p)
  hist((X - n * p)/sqrt(n * p * (1-p)), probability = T,
       main = paste("n =", nn[k], sep = ""), 
       xlab = "", 
       xlim = c(-4, 4), ylim = c(0, 0.5), col = "blue", breaks = 30)
  grid <- seq(-4, 4, length = 1000)
  lines(grid, dnorm(grid), col = "red", lwd = 2)
}

