myRow <- NULL

for(i in 1:dim(CheekyPandaSelectionAndChangeReasons)[1]){
  if(CheekyPandaSelectionAndChangeReasons$toiletPaperNoPrice[i] == 'The Cheeky Panda Toilet Tissue'){
    myRow <- rbind(myRow, data.frame(CheekyPandaSelectionAndChangeReasons$toiletPaperNoPrice[i],CheekyPandaSelectionAndChangeReasons$toiletPaperPurchaseReason[i],CheekyPandaSelectionAndChangeReasons$toiletPaperWithPrice[i],CheekyPandaSelectionAndChangeReasons$toiletPaperChangeReason[i]))
  }
  
}

