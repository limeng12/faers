
genericCallLI<-function(inputNames,functionName){
  search<-J("main.ccbb.faers.core.Search")$getInstance();
  cat( (search %instanceof% "main.ccbb.faers.core.Search") );
  
  names<-.jnew("java.util.ArrayList");
  #drugNames$add("LEPIRUDIN");  #drugNames$add("CETUXIMAB");
  
  for(i in 1:length(inputNames) ) {
    names$add(inputNames[i]);
  }
  
  #result<-search$intersectionSearchDrugsSIRUsingDrugBank(names);
  result<-eval( parse(text=paste("search$",functionName,"(names)",sep="") )  );
  
  isrs<-sapply( result, function(item) item$intValue() );
  
  return(isrs);
  
}

genericCallSI<-function(inputName,functionName){
  search<-J("main.ccbb.faers.core.Search")$getInstance();
  cat( (search %instanceof% "main.ccbb.faers.core.Search") );
  
  
  #result<-search$intersectionSearchDrugsSIRUsingDrugBank(names);
  result<-eval( parse(text=paste("search$",functionName,"(inputName)",sep="") )  );
  
  isrs<-sapply( result, function(item) item$intValue() );
  
  return(isrs);
  
}

genericCallV<-function(functionName){



