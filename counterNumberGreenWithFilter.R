#counter: number of green products selected for each respondent + filter funtion
countingAll <- 0

for(i in 1:dim(allData)[1]){
  insideCounter <- 0
  if(allData$dishSoapWithPrice[i] == "Love Home & Planet  - £2.63" | allData$dishSoapWithPrice[i]=="Seventh Generation - £2.63"){
    insideCounter <- insideCounter + 1
  }
  if(allData$coffeeWithPrice[i] == "Peace Coffee Organic Fair Trade Dark Roast Whole Bean Coffee - £8.51" | allData$coffeeWithPrice[i]=="Equal Exchange Organic Love Buzz Dark Roast Whole Bean Coffee - £6.96"){
    insideCounter <- insideCounter + 1
  }
  if(allData$handSoapWithPrice[i] == "Avalon Organics - £6.30" | allData$handSoapWithPrice[i]=="Everyone - £2.71"){
    insideCounter <- insideCounter + 1
  }
  if(allData$toiletPaperWithPrice[i] == "Quilted Northern Ultra Plush Toilet Paper - £0.81 per roll" | allData$toiletPaperWithPrice[i]=="The Cheeky Panda - £0.66 per roll"){
    insideCounter <- insideCounter + 1
  }
  if(allData$laundryWithPrice[i] == "Tide PurClean - £9.31"){
    insideCounter <- insideCounter + 1
  }
  if(allData$cleaningSprayWithPrice[i] == "Everspring - £2.32" | allData$cleaningSprayWithPrice[i]=="NBD. - £3.85"){
    insideCounter <- insideCounter + 1
  }
  if(allData$juiceWithPrice[i] == "Good & Gather Organic 100% Premium Orange Juice - £3.23" | allData$juiceWithPrice[i]=="Uncle Matt's Organic Orange Juice - £4.62"){
    insideCounter <- insideCounter + 1
  }
  if(allData$riceWithPrice[i] == "Good & Gather Organic Jasmine Rice - £3.85" | allData$riceWithPrice[i]=="Lundberg Organic California White Jasmine Rice - £4.31"){
    insideCounter <- insideCounter + 1
  }
  if(allData$toothpasteWithPrice[i] == "hello Anti-plaque and Whitening Toothpaste - £3.09" | allData$toothpasteWithPrice[i]=="Redmond Earthpaste Amazingly Natural Toothpaste - £5.41"){
    insideCounter <- insideCounter + 1
  }

  #Filter how many green products selected (0-9) + filter for selected sociodemographic variable column (change to match selected option)
  if(insideCounter == 9 & allData$income[i] == "£20,000.00"){
    countingAll <- countingAll + 1
  }
}
