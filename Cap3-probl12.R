setwd("C:/Users/Yarisell/Desktop/Diseño Experimental")
df=read.csv("Tratamiento.csv")
df

str(df)

df$Trat=as.factor(df$Trat)
str(df)

boxplot(Tiempo~Trat,data=df,mani="Comparación del tiempo de coccion/n diferentes tratamientos")

modelo=aov(Tiempo~Trat,data=df)
summary(modelo)


tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")

leveneTest(Tiempo~Trat,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)

plot(df$Trat,modelo$residuals)
abline(h=0)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)
