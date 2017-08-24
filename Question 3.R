fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl,destfile="./data/nat_gas_acq_prog.xlsx",mode="wb") ##remember to add mode="wb"
dateDownloaded<-date()
library(xlsx)
rowIndex<-18:23
colIndex<-7:15
dat<-read.xlsx(file="./data/nat_gas_acq_prog.xlsx",sheetIndex=1,colIndex=colIndex,rowIndex=rowIndex,startRow=18,endRow=23,header=TRUE)
sum(dat$Zip*dat$Ext,na.rm=T) ##sum(dat\(Zip*dat\)Ext,na.rm=T)