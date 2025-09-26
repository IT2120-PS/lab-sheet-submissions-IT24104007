setwd("C:\\Users\\DELL\\OneDrive\\Desktop\\IT24104007")
data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#Question1
popmean<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

popmean
popsd

#Question2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i,sep=''))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

s.means
s.sd

#Question3
samplemean<-mean(s.means)
samplesd<-sd(s.means)

samplemean
samplesd

#state relationships
popmean
samplemean
popsd
samplesd