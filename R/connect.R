
##connect to the database using the configure file.
connect<-function(){
  #path="/home/limeng/workspace/DrugAnalysis/";
  path=system.file(package = "faers");
  
  init<-function(){
    path=system.file(package = "faers");
    #command<-paste("java -DconfigurePath=",path,"/configure.txt ","-Dlog4j.configurationFile=",path,"/faers/configurationFile -Xmx3g -jar ",path,"/faers.jar",sep="");
    par1<-paste("-DconfigurePath=",path,"/configure.txt",sep="");
    par2<-paste("-Dlog4j.configurationFile=",path,"/faers/configurationFile",sep="");
    par3<-paste("-Xmx3g",sep="");
    
    .jinit(parameters=c(par1,par2,par3));
    
    isInit<-TRUE;
    .jaddClassPath(dir( paste(path,"/faers/",sep=""), full.names=TRUE ) );
    .jaddClassPath(paste(path,"/faers.jar",sep="") );
  }
  
  isInit<-FALSE;
  
  if(!isInit)
    init();
  
  configurePath<-paste(path,"/configure.txt",sep="");
  data<-read.table(configurePath,sep="=",as.is=TRUE,header=FALSE);
  host=data[data[,1]=="host",2];
  user=data[data[,1]=="user",2];
  pass=data[data[,1]=="password",2];
  database=data[data[,1]=="database",2];
  
  J("main.ccbb.faers.core.DatabaseConnect")$setMysqlConnector( host,user,pass,database);
  
}

