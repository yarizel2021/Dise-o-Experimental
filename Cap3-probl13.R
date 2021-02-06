setwd("C:/Users/Yarisell/Desktop/Diseño Experimental")
df=read.csv("Modulo.csv")
df

str(df)

df$Temperatura=as.factor(df$Temperatura)
str(df)

boxplot(Modulo~Temperatura,data=df)

modelo=aov(Modulo~Temperatura,data=df)
summary(modelo)

1-pf(68.06,4,15)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

require("car")
leveneTest(Modulo~Temperatura,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)







