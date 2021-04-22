# ANOVA for Figure 10

fig10ANOVA <- aov(withPrice ~ withoutPrice = fig10Data)

summary(fig10ANOVA)