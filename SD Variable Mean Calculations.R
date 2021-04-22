#Table of mean number of green products selected by each respondent 
#highestEducationLevel

#Secondary School
sdHighestEducationLevel <- allData %>%
  select(highestEducationLevel, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(highestEducationLevel == "Secondary School")

#mean number of green products selected WITHOUT price
mean(sdHighestEducationLevel$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdHighestEducationLevel$greenCounterWithPrice)


#Undergraduate
sdHighestEducationLevel <- allData %>%
  select(highestEducationLevel, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(highestEducationLevel == "Undergraduate")

#mean number of green products selected WITHOUT price
mean(sdHighestEducationLevel$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdHighestEducationLevel$greenCounterWithPrice)


#Post Graduate
sdHighestEducationLevel <- allData %>%
  select(highestEducationLevel, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(highestEducationLevel == "Post Graduate")

#mean number of green products selected WITHOUT price
mean(sdHighestEducationLevel$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdHighestEducationLevel$greenCounterWithPrice)


#Other
sdHighestEducationLevel <- allData %>%
  select(highestEducationLevel, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(highestEducationLevel == "")

#mean number of green products selected WITHOUT price
mean(sdHighestEducationLevel$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdHighestEducationLevel$greenCounterWithPrice)