View(Burgerdata)
attach(Burgerdata)
names(Burgerdata)
boxplot(Weightgain ~ Companies)

# Ho - mean weight gain is same for all the companies
aov(Weightgain ~ Companies)
Anova1 <- aov(Weightgain ~ Companies)

summary(Anova1)
attributes(Anova1)

Anova1$coefficients

summary(Anova1)

TukeyHSD(Anova1)

plot(TukeyHSD(Anova1))

plot(TukeyHSD(Anova1), las=1)

kruskal.test(Weightgain ~ Companies)
