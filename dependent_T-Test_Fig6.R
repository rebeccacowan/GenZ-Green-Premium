#Dependent T-Test for Figure 6. 
attach(figure6Data)

t.test(withoutPrice, withPrice, mu = 0, alt = "two.sided", paired = TRUE, conf.level = 0.99)