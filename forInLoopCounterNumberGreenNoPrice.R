#for in loop to add new column with number of green product selections per respondent WITH PRICE

#define new column and set counter to zero
allData$greenCounterWithPrice <- 0

for(i in 1:dim(allData)[1]) { 
  
  #initialise counter
  counter = 0
  
  #dishsoap
  if(allData$dishSoapWithPrice[i] == "Love Home & Planet  - £2.63" | allData$dishSoapWithPrice[i] == "Seventh Generation - £2.63") {
    counter = counter + 1
  }
  
  #coffee
  if(allData$coffeeWithPrice[i] == "Equal Exchange Organic Love Buzz Dark Roast Whole Bean Coffee - £6.96" | allData$coffeeWithPrice[i] == "Peace Coffee Organic Fair Trade Dark Roast Whole Bean Coffee - £8.51") {
    counter = counter + 1
  }
  
  #handsoap
  if(allData$handSoapWithPrice[i] == "Avalon Organics - £6.30" | allData$handSoapWithPrice[i] == "Everyone - £2.71") {
    counter = counter + 1
  }
  
  #toiletpaper
  if(allData$toiletPaperWithPrice[i] == "Quilted Northern Ultra Plush Toilet Paper - £0.81 per roll" | allData$toiletPaperWithPrice[i] == "The Cheeky Panda - £0.66 per roll") {
    counter = counter + 1
  }
  
  #laundry
  if(allData$laundryWithPrice[i] == "Tide PurClean - £9.31") {
    counter = counter + 1
  }
  
  #cleaning spray
  if(allData$cleaningSprayWithPrice[i] == "Everspring - £2.32" | allData$cleaningSprayWithPrice[i] == "NBD. - £3.85") {
    counter = counter + 1
  }
  
  #juice
  if(allData$juiceWithPrice[i] == "Uncle Matt's Organic Orange Juice - £4.62" | allData$juiceWithPrice[i] == "Good & Gather Organic 100% Premium Orange Juice - £3.23") {
    counter = counter + 1
  }
  
  #rice
  if(allData$riceWithPrice[i] == "Lundberg Organic California White Jasmine Rice - £4.31" | allData$riceWithPrice[i] == "Good & Gather Organic Jasmine Rice - £3.85") {
    counter = counter + 1
  }
  
  #toothpaste
  if(allData$toothpasteWithPrice[i] == "hello Anti-plaque and Whitening Toothpaste - £3.09" | allData$toothpasteWithPrice[i] == "Redmond Earthpaste Amazingly Natural Toothpaste - £5.41") {
    counter = counter + 1
  }
  
  #input counter results to new column
  allData$greenCounterWithPrice[i] = counter 
  
}
