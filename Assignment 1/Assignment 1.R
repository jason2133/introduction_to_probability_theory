install.packages('gtools')

library(gtools)

nrow(permutations(n=5, r=2))

nrow(permutations(n=10, r=2))

nrow(permutations(n=365, r=20))

comb_with_replacement <- function(n, r){
  return( factorial(n + r - 1) / (factorial(r) * factorial(n - 1)) )
}

comb_with_replacement(5, 2)

# Num 5
# num5_1
a1 = comb_with_replacement(20, 2)
a2 = nrow(permutations(n=364, r=18))
a3 = 365^20

num5_1 = a1 * 365 * a2 / a3
num5_1

# num5_2
b = 365^20
b

num5_2 = 1 - (nrow(permutations(n=365, r=20)) / b)
num5_2


