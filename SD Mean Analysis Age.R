#Table of mean number of green products selected by each respondent 
#Age

#18
sdAge18 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "18")

#mean number of green products selected WITHOUT price
mean(sdAge18$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge18$greenCounterWithPrice)

#19
sdAge19 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "19")

#mean number of green products selected WITHOUT price
mean(sdAge19$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge19$greenCounterWithPrice)



#20
sdAge20 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "20")

#mean number of green products selected WITHOUT price
mean(sdAge20$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge20$greenCounterWithPrice)



#21
sdAge21 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "21")

#mean number of green products selected WITHOUT price
mean(sdAge21$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge21$greenCounterWithPrice)



#22
sdAge22 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "22")

#mean number of green products selected WITHOUT price
mean(sdAge22$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge22$greenCounterWithPrice)



#23
sdAge23 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "23")

#mean number of green products selected WITHOUT price
mean(sdAge23$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge23$greenCounterWithPrice)



#24
sdAge24 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "24")

#mean number of green products selected WITHOUT price
mean(sdAge24$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge24$greenCounterWithPrice)



#25 & 25+
sdAge25 <- allData %>%
  select(age, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(age == "25")

#mean number of green products selected WITHOUT price
mean(sdAge25$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAge25$greenCounterWithPrice)
