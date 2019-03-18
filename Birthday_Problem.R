rm(list = ls())
# analytical solution
prob1 <- NULL
for (n in 1:50) prob1[n] <- prod(365:(365-n+1))/365^n

pdf("~/Dropbox/teaching/201702_ST221/lecture/figure/birthday1.pdf", 6, 6)
plot(prob1, type = "b", xlab = "# of sutduents", ylab = "Pr(No Same B-day)", 
     cex.lab = 1.5, cex.axis = 1.5)
#text(prob1, cex = 1.5)
abline(h = 1/2, col = 2, lty = 2)
abline(v = 23, col = 4, lty = 2)
dev.off()

# numerical solution
prob2 <- NULL
for (n in 1:50)
{
  r <- NULL
  for (i in 1:5000)
  {
    bday <- sample(365, n, replace = T)
    r[i] <- (length(unique(bday)) == n)
  }
  prob2[n] <- mean(r)
}

pdf("~/Dropbox/teaching/201702_ST221/lecture/figure/birthday2.pdf", 6, 6)
plot(prob1, type = "n", xlab = "# of sutduents", ylab = "Pr(No Same B-day)", 
     cex.lab = 1.5, cex.axis = 1.5)
lines(prob2, col = 2, lwd = 2, lty = 2, type = "b")
abline(h = 1/2, col = 2, lty = 2)
abline(v = 23, col = 4, lty = 2)
dev.off()