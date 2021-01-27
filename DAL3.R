# Title: POSC-3410 Lab 3 ####
# Author: Benjamin Cram
# Date: 1/15/21

# Lesson 1 ####
# Load the package 'tidyverse' using library()
library(tidyverse)

# Import the 'gtd_raw.csv' file as assign it to 'gtd_raw' ####
library(readr)
gtd_raw <- read_csv("gtd_raw.csv")
View(gtd_raw)

# Create Analysis data frame by assinging gtd_raw to gtd_df 
gtd_df <- gtd_raw

# View gtd_df in a separate window in this pane using the following command. 
View(gtd_df)

# Check structure of gtd_df
str(gtd_df)

# Select the columns we will need to make our visualizations - List these in the prompt. 
gtd_df <- gtd_df %>% 
  select(eventid, iyear, imonth, iday, summary, country, country_txt, region, region_txt, provstate, city, crit1, crit2, crit3, doubtterr, success, suicide, attacktype1, attacktype1_txt, attacktype2, attacktype2_txt, attacktype3, attacktype3_txt, targtype1, targsubtype1_txt, targtype2, targtype2_txt, targtype3, targtype3_txt, gname, gname2, gname3, nperps, nperpcap, motive, nkill, nkillus, nkillter, nwound, nwoundus, nwoundte, property, propextent, propextent_txt, propvalue, nhostkid, nhostkidus, nhours, ndays, ransom, ransomamt, ransompaid, hostkidoutcome, hostkidoutcome_txt, nreleased)

# Check structure of gtd_df
str(gtd_df)

# QuestionA: What do the rows (be careful and specific) and columns represent in this data set? Code a text string describing what you see to `Answer1` ####
AnswerA <- "Each row appears to represent an event of terrorism with each column being something to note in the event such as where the event happened, what type of attack, who was the target group, was the incident doubtful as to whether it was terrorism, etc."
