library(tidyverse)
library(ggplot2)
download.file(quakes)
library(datasets)
data("quakes", package = "datasets")
quakes

quakes <- as_tibble(quakes)
quakes

# verifying distributions of features
ggplot(quakes,aes(x = mag))+
  geom_density(alpha = 0.4, fill = "#FF6666")

#distribution like the Maxwell-Boltzman/ Weibull (continuous data)

ggplot(quakes, aes(x = depth))+
  geom_histogram(alpha = 0.3, colour = "black" , fill = "green")

#discrete data for depth of quakes -- distribution is bimodal 

ggplot(quakes,aes(x = long))+
  geom_density(alpha = 0.5, fill = "blue")

# continuous data for longitudes is also bimodal 

install.packages("native stats")
library("native stats")

cov(quakes$long,quakes$depth)
#covariance of 189 indicates positive dependence between longitudes and depth of quakes

cor(quakes$long,quakes$depth)
#correlation coefficient of 0.144 is weak 

