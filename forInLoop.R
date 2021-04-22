#For in loop for accuracy of reported willingness to pay premium + filter function for socio-demographic variables 

#Change object name to product category
allLaundryLiars <- NULL
outside <- 0

for(i in 1:dim(allPriceDiffData)[1]){
  truth <- FALSE #Set to false at beginning
  priceDiff <- allPriceDiffData$laundryPropPriceDiff[i] #Change This
  premSelect <- allPriceDiffData$howMuchPremium[i]
  
  
  choice <- NULL
  selection1 <- allPriceDiffData$laundrySelection1[i] #Change This
  selection2 <- allPriceDiffData$laundrySelection2[i] #Change This
  
  #MAKE SURE SELECTION 2 CONTAINS PRICE
  if(selection1 == "Tide PurClean Laundry Detergent" & selection2 == "Tide PurClean - £9.31"){
    #Green to Green Selection
    choice <- 'Green 2 Green'
  }else if((selection1 == "Tide PurClean Laundry Detergent") & (selection2 == "method Fresh Air - £10.09" | selection2 == 'Tide Clean Breeze - £9.31' | selection2 == "Smartly Fresh Scent - £3.25")){
    #Green to non-Green selection
    choice <- 'Green 2 Non-Green'
  }else if((selection1 == "Tide Clean Breeze Laundry Detergent" | selection1 == 'method Fresh Air Laundry Detergent' | selection1 == "Smartly Fresh Scent Laundry Detergent") & (selection2== "Tide PurClean - £9.31")){
    #Non-Green to Green selection
    choice <- 'Non-Green 2 Green'
  }else {
    #Non-Green to Non-Green
    choice <- 'Non-Green 2 Non-Green'
  }
  
  
  
  if(premSelect == '50-£1'){
    if(choice == 'Green 2 Green'){
      truth <- TRUE
    }
    else if(choice == 'Green 2 Non-Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        truth <- 'Undefined'
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        if(priceDiff < 0.21){
          truth <- FALSE
        }else{
          truth <- TRUE
        }
      }else{
        #Price difference is 0
        truth <- 'Undefined'
      }
    }
    else if(choice == 'Non-Green 2 Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        if(priceDiff > -0.21){
          truth <- TRUE
        }else{
          truth <- 'Higher Premium'
        }
        
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        truth <- 'Not Paying Premium'
        
      }else{
        #Price difference is 0
        truth <- 'Not Paying Premium'
      }
    }
    else{
      truth <- 'No Green'
    }
  #Next Price Section
  }else if(premSelect == '10p-50p'){
    if(choice == 'Green 2 Green'){
      #Could be paying more than stated premium
      truth <- TRUE
    }
    else if(choice == 'Green 2 Non-Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        truth <- 'Undefined'
      }else if(priceDiff > 0){
        #Gone to a cheaper product
        if(priceDiff < 0.11){
          #Less than stated range (Less than 50p)
          truth <- FALSE
        }else{
          truth <- TRUE
        }
      }else{
        #Price difference is 0
        truth <- 'Undefined'
      }
    }
    else if(choice == 'Non-Green 2 Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        if(priceDiff > -0.11){
          #Anything up until their range counts as true
          truth <- TRUE
        }else{
          #Anything above their range counts as Higher Premium
          truth <- 'Higher Premium'
        }
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        truth <- 'Not Paying Premium'
      }else{
        #Price difference is 0
        truth <- 'Not Paying Premium'
      }
    }
    else{
      truth <- 'No Green'
    }
    #Next Price Section
  }else if(premSelect == '£1-£2'){
    if(choice == 'Green 2 Green'){
      truth <- TRUE
    }
    else if(choice == 'Green 2 Non-Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        truth <- 'Undefined'
      }else if(priceDiff > 0){
        #Gone to a cheaper product
        if(priceDiff < 0.41){
          #Less than stated range (Less than £2)
          truth <- FALSE
        }else{
          truth <- TRUE
        }
      }else{
        #Price difference is 0
        truth <- 'Undefined'
      }
    }
    else if(choice == 'Non-Green 2 Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        if(priceDiff > -0.41){
          #Anything up until their range counts as true
          truth <- TRUE
        }else{
          #Anything above their range counts as Higher Premium
          truth <- 'Higher Premium'
        }
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        truth <- 'Not Paying Premium'
      }else{
        #Price difference is 0
        truth <- 'Not Paying Premium'
      }
    }
    else{
      truth <- 'No Green'
    }
    #Next Price Section
  }else if(premSelect == '£2-£5'){
    if(choice == 'Green 2 Green'){
      truth <- TRUE
    }
    else if(choice == 'Green 2 Non-Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        truth <- 'Undefined'
      }else if(priceDiff > 0){
        #Gone to a cheaper product
        if(priceDiff < 1.01){
          #Less than Max stated range (Less than £2-5)
          truth <- FALSE
        }else{
          truth <- TRUE
        }
      }else{
        #Price difference is 0
        truth <- 'Undefined'
      }
    }
    else if(choice == 'Non-Green 2 Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        if(priceDiff > -1.01){
          #Anything up until their max range counts as true
          truth <- TRUE
        }else{
          #Anything above their range counts as Higher Premium
          truth <- 'Higher Premium'
        }
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        truth <- 'Not Paying Premium'
      }else{
        #Price difference is 0
        truth <- 'Not Paying Premium'
      }
    }
    else{
      truth <- 'No Green'
    }
    #Next Price Section
  }else{
    #When premSelect == £5+
    if(choice == 'Green 2 Green'){
      truth <- TRUE
    }
    else if(choice == 'Green 2 Non-Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        truth <- 'Undefined'
      }else if(priceDiff > 0){
        #Gone to a cheaper product
        if(priceDiff < 5.01){
          #Less than Max stated range (Less than £5+)
          truth <- FALSE
        }else{
          truth <- TRUE
        }
      }else{
        #Price difference is 0
        truth <- 'Undefined'
      }
    }
    else if(choice == 'Non-Green 2 Green'){
      if(priceDiff < 0){
        #Gone to a more expensive Product
        if(priceDiff > -5.01){
          #Anything up until their max range counts as true
          truth <- TRUE
        }else{
          #Anything above their range counts as Higher Premium
          truth <- 'Higher Premium'
        }
      }else if(priceDiff > 0){
        #Gone to a cheaper Product
        truth <- 'Not Paying Premium'
      }else{
        #Price difference is 0
        truth <- 'Not Paying Premium'
      }
    }
    else{
      truth <- 'No Green'
    }
  }
  #Add to Table
  #Change Product types and table name below
  allLaundryLiars <- rbind(allLaundryLiars, data.frame(allPriceDiffData$laundryNoPrice[i], allPriceDiffData$laundryWithPrice[i], allPriceDiffData$laundryPriceDifference[i], allPriceDiffData$laundryPropPriceDiff[i], allPriceDiffData$howMuchPremium[i], truth))
}
