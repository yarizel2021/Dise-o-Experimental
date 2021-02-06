setwd("C:/Users/Yarisell/Desktop/Diseño Experimental")
df=read.csv("replica.csv")
df

str(df)

df$Exp.=as.factor(df$Exp.)
str(df)

boxplot(P.P.D~Exp.,data=df)

modelo=aov(P.P.D~Exp.,data=df)
summary(modelo)

1-pf(73.14,1,48)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")
leveneTest(P.P.D~Exp.,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)







