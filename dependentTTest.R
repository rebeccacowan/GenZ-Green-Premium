#Save the data in two different vectors
before <- X3298fig6Data$withoutPrice
after <- X3298fig6Data$withPrice

#Compute Dependent T-Test
res3298 <- t.test(before, after, paired = TRUE)
res3298