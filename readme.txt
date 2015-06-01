faers R package

INSTALL:

install.packages("devtools")

library(devtools)

install_github("limeng12/faers")


USE:
library(faers);

connect();

getIntersectDrugNames(  c("DOXORUBICIN","LEPIRUDIN")  );