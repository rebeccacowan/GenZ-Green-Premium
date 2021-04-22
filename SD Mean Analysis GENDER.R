#Table of mean number of green products selected by each respondent 
#Gender

#Female
sdGenderFemale <- allData %>%
  select(gender, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(gender == "Female")

mean(sdGenderFemale$greenCounterWithPrice)

mean(sdGenderFemale$greenCounterNoPrice)

#Male
sdGenderMale <- allData %>%
  select(gender, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(gender == "Male")

mean(sdGenderMale$greenCounterWithPrice)

mean(sdGenderMale$greenCounterNoPrice)

#Non-Binary
sdGenderNonBinary <- allData %>%
  select(gender, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(gender == "Non Binary")

mean(sdGenderNonBinary$greenCounterWithPrice)

mean(sdGenderNonBinary$greenCounterNoPrice)

#Prefer not to say
sdGenderNA <- allData %>%
  select(gender, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(gender == "Prefer not to say")

mean(sdGenderNA$greenCounterWithPrice)

mean(sdGenderNA$greenCounterNoPrice)

