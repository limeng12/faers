

hashToVector<-function(obj){
  
  hashsetObj<-.jstrVal(obj);
  strArray<-strsplit(substr(hashsetObj,2,nchar(hashsetObj)-1),",")[[1]];
  numericArray<-as.numeric(strArray);
  return(numericArray);
  
}