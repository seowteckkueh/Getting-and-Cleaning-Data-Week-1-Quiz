fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl,destfile="./data/ss06pid.csv")
dat<-fread("./data/ss06pid.csv")
