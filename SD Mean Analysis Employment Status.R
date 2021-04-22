#Table of mean number of green products selected by each respondent 
#Employement Status

#Unemployed
sdEmploymentStatusUnemployed <- allData %>%
  select(employmentStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(employmentStatus == "Unemployed")

#mean number of green products selected WITHOUT price
mean(sdEmploymentStatusUnemployed$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdEmploymentStatusUnemployed$greenCounterWithPrice)



#Part Time
sdEmploymentStatusPartTime <- allData %>%
  select(employmentStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(employmentStatus == "Part-time")

#mean number of green products selected WITHOUT price
mean(sdEmploymentStatusPartTime$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdEmploymentStatusPartTime$greenCounterWithPrice)



#Full Time
sdEmploymentStatusFullTime <- allData %>%
  select(employmentStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(employmentStatus == "Full-time")

#mean number of green products selected WITHOUT price
mean(sdEmploymentStatusFullTime$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdEmploymentStatusFullTime$greenCounterWithPrice)



#Other
sdEmploymentStatusOther <- allData %>%
  select(employmentStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(employmentStatus == "Other")

#mean number of green products selected WITHOUT price
mean(sdEmploymentStatusOther$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdEmploymentStatusOther$greenCounterWithPrice)