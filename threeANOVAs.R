#ANOVAs for Figure 10

#Figure10 ANOVA No Price
LMresAovFig10NoPrice <- lm(dishSoapNoPrice ~ coffeeNoPrice + handSoapNoPrice + toiletPaperNoPrice + laundryNoPrice + cleaningSprayNoPrice + juiceNoPrice + riceNoPrice + toothpasteNoPrice, data = Figure10ANOVAData3)

summary(LMresAovFig10NoPrice)

##Figure 10 ANOVA With Price
LMresAovFig10WithPrice <- lm(dishSoapWithPrice ~ coffeeWithPrice + handSoapWithPrice + toiletPaperWithPrice + laundryWithPrice + cleaningSprayWithPrice + juiceWithPrice + riceWithPrice + toothpasteWithPrice, data = Figure10ANOVAData3)

summary(LMresAovFig10WithPrice)

#Figure 10 ANOVA withoutPrice vs. withPrice
LMresAovFig102Col <- lm(withoutPrice ~ withPrice, data = fig10Data)

summary(LMresAovFig102Col)








