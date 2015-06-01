
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