setwd("C:\\Users\\it24104007\\Desktop\\IT24104007\\Lab 05-20250829")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

str(Delivery_Times)
head(Delivery_Times)

names(Delivery_Times)
breaks <- seq(20, 70, length.out = 10)   

hist(Delivery_Times$Delivery_Time_.minutes., 
     breaks = breaks, 
     right = FALSE,   
     col = "lightblue", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time(minutes)", 
     ylab = "Frequency")

freq_table <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks, right = FALSE, plot = FALSE)
cum_freq <- cumsum(freq_table$counts)
plot(freq_table$breaks[-1], cum_freq, type = "o", col = "orange", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")
