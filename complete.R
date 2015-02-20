
complete<-function(directory="specdata",id =1:332){
						
						x<-list.files(directory,pattern="*.csv",full.names=TRUE)
						dataframe<-data.frame()
						
						for(i in id)
							{
							 file<-read.csv(x[i],sep=",",header=TRUE)
							 data<-c(mean(file[,"ID"],na.rm=TRUE),nrow(na.omit(file)))
							 dataframe<-rbind(dataframe,data)
							}
						colnames(dataframe)<-c("id","nobs")
						dataframe
}


