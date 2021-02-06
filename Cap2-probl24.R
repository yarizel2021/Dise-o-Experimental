T.baja=c(17.2, 17.5, 18.6, 15.9 ,16.4, 17.3, 16.8, 18.4, 16.7, 17.6 )
T.alta=c(21.4, 20.9, 19.8, 20.4, 20.6, 21.0, 20.8, 19.9, 21.1, 20.3 )

t.test(T.baja,T.alta)

df=data.frame(T.baja=T.baja,T.alta=T.alta)
df=stack(df)
df

names(df)=c("T", "Temperatura")
df

str(df)

boxplot(T~Temperatura,data=df)
