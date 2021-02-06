setwd("C:/Users/Yarisell/Desktop/Diseño Experimental")
df=read.csv("Tratamiento.csv",sep=";")
df

str(df)

df$Control=as.factor(df$Control)
str(df)

boxplot(Tratamiento~Control,data=df)

modelo=aov(Tratamiento~Control,data=df)
summary(modelo)

1-pf(0.177,)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

require("car")

leveneTest(Tratamiento~Control,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)
