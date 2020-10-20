library(tidyverse)
tempo <- c(1,2,3,4)
titre <- c(9.9,8.9,7.9,5.2)
df <- tibble(tempo, titre)


mod <- lm(titre~tempo, data=df)




predict(lm(y ~ x))
new <- data.frame(x = c(1,2,3,48))
predict(lm(titre~tempo, data= new))


pred<-predict(mod, data.frame(temp = c(48)))

