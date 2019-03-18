rm(list = ls())
# Solution of Monty Hall

rule <- 1 # stay if 0 / change if 1

win <- NULL 
for (i in 1:10000)
{
  car <- sample(3,1)
  old.choice <- sample(3,1)
  
  if (car == old.choice) monty <-sample((1:3)[-car],1) 
  else monty <- unlist(setdiff(1:3, c(car, old.choice)))
  
  if (rule == 1) new.choice <- unlist(setdiff(1:3, c(monty, old.choice)))
  else new.choice <- old.choice
  
  win[i] <- c(car == new.choice)  
}

print(mean(win))

