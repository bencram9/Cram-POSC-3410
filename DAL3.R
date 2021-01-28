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

# QuestionB: What years does the data set span? Code the first year and last year in the numeric string ####
#HINT: Call summary(gtd_df$iyear)
summary(gtd_df$iyear)
AnswerB <- c(summary(gtd_df$iyear))

# Create Visualization of Number of Terrorist Attacks per Year - Fill in the blanks on the Bar Chart #### 
gtd_df %>% 
  filter(crit1 == 1 & crit2 == 1 & crit3 == 1) %>% 
  group_by(iyear) %>% # Be sure to add the correct group_by variable. 
  count() %>% 
  rename(`Number of Attacks` = n, Year = iyear) %>% 
  ggplot(aes(x=Year, y=`Number of Attacks`))+ 
  geom_bar(stat="identity")

# Question 1: What trends do we see? Does anything look peculiar? Code a text string describing what you see to `Answer1`####
Answer1 <- "The number of attacks rises tremendously after the mid-2000s, data is also missing for one year."

# Use a table to identify how many terrorist attacks there were per year 
gtd_df %>% 
  filter(crit1 == 1 & crit2 == 1 & crit3 == 1) %>% 
  group_by(iyear)%>% # What command goes here?
  count()%>% # What command goes here? 
  View()
# Question 2: What year shows no terrorist attacks? Why are we missing it. (HINT: refer to the GTD Code Book). Code your answer as a text string called 'Answer2'.  ####
Answer2 <- "1993. Data was lost prior to compilation."

# Question 3: In how many incidents is there doubt as to whether the incident is terrorism? Code answer as numeric vector.####

# View the code book to find which variable tells us if there is doubt whether the indicident is terorism. We will need to group and count. 
gtd_df$doubtterr

# Code goes here
gtd_df %>% 
  group_by(doubtterr) %>% 
  count()
# Write your answer.
Answer3<-c(31060)

# Question 4: What percent of the total number of incidents in the data frame is there doubt about whether it is terrorism. Show both code and assign answer to a numeric vector? ####

Answer4<- c()






# Question 5:  What were the top 3 years in terms of number of terrorist attacks.Show both code and answer. Assign a numeric vector to Answer5. ####

gtd_df %>% 
  filter()%>% # A filter command goes here.
  %>% # A tidyerse command goes here. Which one? 
  %>% # A tidyerse command goes here. Which one? 
  arrange()

Answer5 <- c() # 3 numeric elements go into this vector. 




