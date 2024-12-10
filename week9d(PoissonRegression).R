d.AD <- data.frame(treatment = gl(3,3), outcome = gl(3,1,9),
                   counts = c(18,21,15,17,10,16,25,13,12))
d.AD
x <- rnorm(100)
y <- rpois(100, exp(1+x))
fit1 <- glm(counts ~ outcome + treatment, d.AD, family = poisson())
summary(fit1)
plot(fit1)
