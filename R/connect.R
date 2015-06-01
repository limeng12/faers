connect<-function(){
  #path="/home/limeng/workspace/DrugAnalysis/";
  path=system.file(package = "faers");
  init<-function(){
    .jinit()
    isInit<-TRUE;
    .jaddClassPath(dir( paste(path,"/faers/",sep=""), full.names=TRUE ) );
    .jaddClassPath(paste(path,"/faers.jar",sep="") );
  }
  
  isInit<-FALSE
  
  if(!isInit)
    init();
  
  J("main.ccbb.faers.core.DatabaseConnect")$setMysqlConnector( "rdc04.uits.iu.edu:3080","wxy","wxy","drug");
  
}

