#Table of mean number of green products selected by each respondent 
#accommodationStatus

#Student Accommodation
sdAccommodationStudent <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "Student accommodation")

#mean number of green products selected WITHOUT price
mean(sdAccommodationStudent$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationStudent$greenCounterWithPrice)



#Shared flat/house with housemates
sdAccommodationShared <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "Shared flat/house with housemates")

#mean number of green products selected WITHOUT price
mean(sdAccommodationShared$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationShared$greenCounterWithPrice)



#At family home with parents
sdAccommodationParents <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "At family home with parents")

#mean number of green products selected WITHOUT price
mean(sdAccommodationParents$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationParents$greenCounterWithPrice)



#Living in flat/house with partner and/or children
sdAccommodationPartner <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "Living in flat/house with partner and/or children")

#mean number of green products selected WITHOUT price
mean(sdAccommodationPartner$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationPartner$greenCounterWithPrice)



#Living alone in my own house/flat
sdAccommodationAlone <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "Living alone in my own house/flat")

#mean number of green products selected WITHOUT price
mean(sdAccommodationAlone$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationAlone$greenCounterWithPrice)



#Other
sdAccommodationOther <- allData %>%
  select(accommodationStatus, greenCounterWithPrice, greenCounterNoPrice) %>%
  filter(accommodationStatus == "")

#mean number of green products selected WITHOUT price
mean(sdAccommodationOther$greenCounterNoPrice)

#mean number of green products selected WITH price
mean(sdAccommodationOther$greenCounterWithPrice)