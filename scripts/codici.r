library("tidyverse")
library("here")
library("hrbrthemes")
library("ggpubr")

dt <- tibble( tempo= c(0, 1.5, 3, 4.5), titolo = c(10^9.9, 10^7.7, 10^6.3, 10^5.1))
x <-lm(log10(titolo)~tempo, data=dt)
# anova(x)
# cor(dt$tempo, log10(dt$titolo))

dt %>% 
  ggplot(aes(x=tempo, y =log10(titolo)))+ geom_point()+
  geom_smooth(method = "lm",  formula = y ~ x, col = "blue")+
  stat_cor(aes(label = ..r.label..), label.y = 6)+
  stat_regline_equation(label.y = 5)+
  theme_ipsum_rc()
  