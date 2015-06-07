faers R package

INSTALL:

install.packages("devtools")

library(devtools)

install_github("limeng12/faers")


USE:
library(faers);

#connect the remote database.
connect();

#search two drug's intersection report.
getIntersectDrugNames(  c("DOXORUBICIN","LEPIRUDIN")  );

#editing the configurefile
editConfigure();

#call the gui interface
runGuiFork();
