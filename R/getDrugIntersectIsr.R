
getDrugIntersectIsr<-function(inputDrugNames){
  return(genericCallLIL(inputDrugNames,"intersectionSearchDrugsSIRUsingDrugBank"));
  
}

getDrugUnionIsr<-function(inputDrugNames){
  return(genericCallLIL(inputDrugNames,"unionSearchIsrUsingDrugbank"));
  
}

getADEIntersectIsr<-function(inputDrugNames){
  return(genericCallLIL(inputDrugNames,"intersectionSearchADEsUsingMedDRA"));
  
}

getAdeUnionIsr<-function(inputDrugNames){
  return(genericCallLIL(inputDrugNames,"unionSearchIsrUsingMeddra"));
  
}

getDrugIsrsMiddleTable<-function(inputDrugName){
  return(genericCallSIL(inputDrugName,"searchEn$getIsrsFromDrugBankDrugNameMap"));
  
}

getDrugIsrs<-function(inputDrugName){
  return(genericCallSIL(inputDrugName,"searchEn$getIsrsFromDrugBankDrugName") );
  
}

#getIsrsUsingMeddra
getAdeIsrs<-function(inputAdeName){
  return(genericCallSIL(inputAdeName,"searchEn$getIsrsUsingMeddra") );
  
}




