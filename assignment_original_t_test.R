attach(bmi)
names(bmi)

#Ho : mu<8 + 95% confidence interval
t.test(BMI, mu = 20,alternative="two.side",conf.level =0.95)

boxplot(BMI ~ Gender)

#Ho : BMI OF MALE = BMI OF FEMALE
#assumption - non-equal variances

t.test(BMI ~ Gender, mu=0, alt="two.sided", paired=F, conf.level=0.95)

#By default values which t.test takes are mention in the above line
t.test(BMI ~ Gender)

t.test(BMI[Gender=='Male'],BMI[Gender=='Female'])
