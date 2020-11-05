#Importing the data
data<-read.csv(file.choose())

head(data)

dim(data)
summary(data)

typeof(start)

aadate<- mdy(data$start)
data$MonthYear <- format(as.Date(aadate),"%Y-%m") 

write.csv(data,"C:/Users/dmsha/Desktop/AMEXGBT/Dataframe.csv", row.names = TRUE)


#Working with DF2.csv
m <- as.matrix(data[, -1])
rownames(m) <- data$Country
heatmap(m, Colv = NA,scale = "column", col = topo.colors(256),xlab="Months", ylab="Country", main="IATA Heatmap")
