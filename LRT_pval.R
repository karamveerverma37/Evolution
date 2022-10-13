# input table is parsed results from batch_pairwise.hyphy
data <- read.csv("table.tsv", sep = "\t")
LRT<-data$lrt
pVal <- 1-pchisq(LRT,1)
x<-cbind(data,pVal)
# output is input table with p-value information
write.table(x,file='output_pVal.csv',sep = "\t",row.names = F)
