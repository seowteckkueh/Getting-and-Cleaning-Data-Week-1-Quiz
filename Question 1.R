if(!file.exists("data")){     ##create a folder called data if it does not exist in working directory
  dir.create("data")
}
library(data.table)
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl,destfile="./data/america_comm_survey.csv")
dateDownloaded<-date()

data<-read.csv("./data/america_comm_survey.csv")
##VAL==24 is where value of the houses are more than $1000000
answer<-length(data$VAL[!is.na(data$VAL)&data$VAL==24])