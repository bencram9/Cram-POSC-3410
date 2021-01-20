# Title: POSC-3410 Lab 2 ####
# Author: Benjamin Cram
# Date: 1/22/21

# Lesson 1 ####
install.packages("tidyverse")
# Lesson 2 ####
library(tidyverse)
# Load data
data(mpg)
# Check the structure of mpg using str()
str(data(mpg))
# Answer below (using a comment) what type of data structure mpg is?
# character
# Create analysis data frame: We do this so we preserve a raw version of the dataframe to which we can refer as we make
mpg_df<-mpg
# Check the structure of mpg_df using str()
str(mpg_df)
# Scatter plot of displ x hwy
ggplot(mpg_df, aes(x=displ , y=hwy ))+ geom_point()
