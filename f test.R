View(bmi)
attach(bmi)
names(bmi)

full.model <- lm(BMI ~ Height + I(Height^2))
reduced.model <- lm(BMI ~ Height)

summary(full.model)
summary(reduced.model)


#partial f test
anova(reduced.model , full.model)


model1 <- lm(BMI ~ Height + Gender + Weight)
model2 <- lm(BMI ~ Height + Weight + Gender)
anova(model1,model2)
