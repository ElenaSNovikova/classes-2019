library(tidyverse)
library(here)

meie <- read_delim("data/meie.csv",
                      delim = ";", 
                      escape_double = FALSE, 
                      trim_ws = TRUE)
                      
% local
% journal
% cites
% IF
% year
% n_auth
% foreign_collaboration
                      
meie
spec(meie)
summary(meie)

ggplot(data = meie) +
  geom_point(aes(x = year, y = cites, color = local))+
  facet_wrap(~foreign_collaboration)

ggplot(data = meie) +
  geom_point(aes(x = n_auth, y = cites, color = local))+
  facet_wrap(~foreign_collaboration)
  
    
ggplot(data = meie) +
  geom_point(aes(x = IF, y = cites, color = local))+
  facet_wrap(~foreign_collaboration)
  
ggplot(data = meie) +
  geom_smooth(aes(x = IF, y = cites))+
  facet_wrap(~foreign_collaboration) 
  
ggplot(data = meie) +
  geom_smooth(aes(x = IF, y = cites), method = "lm")+
  facet_wrap(~foreign_collaboration) 
  
ggplot(data = meie) +
  geom_bar(aes(x = year, fill = local), position = "dodge")

ggplot(data = meie) +
  geom_bar(aes(x = year, fill = foreign_collaboration), position = "dodge")
