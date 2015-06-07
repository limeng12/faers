#run the gui interface.
runGui<-function(){
  #path=system.file(package = "faers");
  gui<-new(J("main.ccbb.faers.graphic.FaersAnalysisGui") );
  #gui$setVisible(FALSE);
  #gui$setVisible(FALSE);
  
  
}

#run the gui in another interface, this is prefered.
runGuiFork<-function(){
  path=system.file(package = "faers");
  #gui<-new(J("main.ccbb.faers.graphic.FaersAnalysisGui") );
  command<-paste("java -DconfigurePath=",path,"/configure.txt ","-Dlog4j.configurationFile=",path,"/faers/configurationFile -Xmx3g -jar ",path,"/faers.jar",sep="");
  cat(command);
  system(command,wait=FALSE);
  
  #gui$setVisible(FALSE);
  #gui$setVisible(FALSE);
  
  
}

#The configure file of the package.
editConfigure<-function(){
  path=system.file(package = "faers");
  file.edit(paste(path,"/configure.txt",sep=""));
  
}