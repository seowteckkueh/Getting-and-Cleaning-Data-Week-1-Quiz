##install.packages("XML")
library(XML)
fileUrl<-"http://d396qusza40orc.cloudfront.net/getdata/data/restaurants.xml"
doc<-xmlTreeParse(file=fileUrl,useInternal=TRUE) ##parse the xml into doc
rootNode<-xmlRoot(doc) ##find the root node for doc
xmlName(rootNode) ##name of the rootNode
zipcode<-xpathSApply(rootNode,"//zipcode",xmlValue) ##read the node with element zipcode 
print(table(zipcode==21231)) ##make a table for counts of zipcode==21231 and the opposite