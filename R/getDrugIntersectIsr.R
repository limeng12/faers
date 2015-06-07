
getDrugIntersectIsr<-function(inputDrugNames){
  
  return(genericCallLI(inputDrugNames,"intersectionSearchDrugsSIRUsingDrugBank"));
  
}

getDrugUnionIsr<-function(inputDrugNames){
  
  return(genericCallLI(inputDrugNames,"unionSearchIsrUsingDrugbank"));
  
}


getADEIntersectIsr<-function(inputDrugNames){
  
  return(genericCallLI(inputDrugNames,"intersectionSearchADEsUsingMedDRA"));
  
}

getAdeUnionIsr<-function(inputDrugNames){
  
  return(genericCallLI(inputDrugNames,"unionSearchIsrUsingMeddra"));
  
}

getDrugIsrsMiddleTable<-function(inputDrugName){
  
  return(genericCallSI(inputDrugName,"searchEn$getIsrsFromDrugBankDrugNameMap"));
  
}

getDrugIsrs<-function(inputDrugName){
  
  return(genericCallSI(inputDrugName,"searchEn$getIsrsFromDrugBankDrugName") );
  
}