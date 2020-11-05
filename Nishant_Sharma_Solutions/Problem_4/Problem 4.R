#Importing the data
data<-read.csv(file.choose())

head(data)

dim(data)
summary(data)

#total trip spend = (Fare + (Mile * Rate)) * Flight_Valid 
fare <- (data$fl_grfare_usd_am + (data$fl_mile_ct * data$fl_cost_per_mile_usd_am)) * data$fl_valid_id
TotalFare <- sum(fare)

TotalMiles <- sum(data$fl_mile_ct)
TotalValidTrips <- sum(data$fl_valid_id)

DistinctCities<- unique(data$destination_city)

# From Data it is clear that the traveler's home city code is PHX
# There are 21 cases of PNR where the traveller is returning home to PHX 
# There are 13 cases of PNR with round trip
# There are 8 cases of PNR with one-way return to PHX trip
