
corr<-function(directory="specdata",threshold=0,id=1:332){
						
						files<-list.files(directory,pattern="*.csv",full.names=TRUE)
						cnt<-1
						data<-vector()
						for(i in id)
							{
							 file<-na.omit(read.csv(files[i],sep=",",header=TRUE))
								
								if (nrow(file)>threshold)
								{
								x<-file[,"nitrate"]
								y<-file[,"sulfate"]
								data[cnt]<-cor(x,y,use="everything",method=c("pearson","kendall","spearman"))
								cnt<-cnt+1
								
								}
							   				
							}
							data
						}



