library(readxl)
covid19_vac <- read_excel("E:/R_project/GY7702_2021-22_Assignment_1_v1-0/covid19_vaccinations_2020-12-06_2021-10-02_long.xlsx")
View(covid19_vac)

library(dplyr)

LADs <- pull(read.csv("E:/R_project/GY7702_2021-22_Assignment_1_v1-0/LADs.csv", header=FALSE))
View(LADs)

data <- covid19_vac[LADs,]

ukpop <- read_excel("E:/R_project/GY7702_2021-22_Assignment_1_v1-0/ukpopestimatesmid2020on2021geography.xlsx")
View(ukpop)
ukpop_lad<- ukpop[LADs,]

q2<- cbind(data, ukpop_lad)

#new cases as percentage

total_population<- sum(q2$`All ages`)

percentage<- q2$`All ages`/total_population

cbind(q2,percentage)

#part 2.2

subset<- q2[date_reported == "July 2021"]

#change in new cases

change<- q2$`All ages`"July 2021"

cbind(q2, change)
