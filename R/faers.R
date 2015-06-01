
getIntersectDrugNames<-function(inputDrugNames){
  search<-J("main.ccbb.faers.core.Search")$getInstance();
  cat( (search %instanceof% "main.ccbb.faers.core.Search") );
  
  drugNames<-.jnew("java.util.ArrayList");
  #drugNames$add("LEPIRUDIN");	#drugNames$add("CETUXIMAB");
  
  for(i in 1:length(inputDrugNames) ) {
    drugNames$add(inputDrugNames[i]);
  }
  
  result<-search$intersectionSearchDrugsSIRUsingDrugBank(drugNames);
  
  isrs<-sapply( result, function(item) item$intValue() );
  return(isrs);
  
}
