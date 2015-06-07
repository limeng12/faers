
runGui<-function(){
  path=system.file(package = "faers");
  command<-paste("java -DconfigurePath=",path,"/faers/configure.txt ","-Dlog4j.configurationFile=",path,"/faers/configurationFile -Xmx3g -jar ",path,"/faers.jar",sep="");
  cat(command)
  system(command);
  
}

editConfigure<-function(){
  path=system.file(package = "faers");
  edit(paste(path,"/configure.txt",sep=""));
  
}