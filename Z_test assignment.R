library(BSDA)
##enter IQ levels for 20 patients

data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
         105, 109, 109, 109, 110, 112, 112, 113, 114, 115)

#perform one sample z-test
z.test(data, mu=100, sigma.x=15)

#The test statistic for the one sample z-test is 0.90933 and the corresponding p-value is 0.3632.
#Since this p-value is not less than .05, we do not have sufficient evidence to reject the null hypothesis.
#Thus, we conclude that the new medication does not significantly affect IQ level.


#enter IQ levels for 20 individuals from each city
cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

#perform two sample z-test
z.test(x=cityA, y=cityB, mu=0, sigma.x=15, sigma.y=15)

#The test statistic for the two sample z-test is -1.7182 and the corresponding p-value is 0.08577
#Since this p-value is not less than .05, we do not have sufficient evidence to reject the null hypothesis.
#Thus, we conclude that the mean IQ level is not significantly different between the two cities.
