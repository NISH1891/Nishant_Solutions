#Importing the data

#Step 1: Find difference between weekly P&L
#Step 2: Find the avereage P&L%
#Step 3: Sort the stocks in descending order of P&L
#Step 4: Drop cases that don't have Average P&L%
#Loading modified dataframe containing Average Profit and Loss calculated in Excel

data<-read.csv(file.choose())

df<- data.frame(data$stock, data$Avg_PnL)

#ploting leaders and laggers
library(RColorBrewer)
plot(df, col = brewer.pal(3,"BuGn") , xlab = "Stocks", ylab = "Average Profit & Loss %", main="Leader & Lagger Stocks" )
df