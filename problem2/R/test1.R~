setwd("/home/jeffrey/Dropbox/courses (1)/myCourses/CS249-2/midterm/problem2/names/")
file_list <- list.files()

#print(file_list)
print(file_list[2])
# merge all the txt times in different years to a one single datagrame

setwd("/home/jeffrey/Dropbox/courses (1)/myCourses/CS249-2/midterm/problem2/names/")


dataset<-NA
#print("Dataset is", dataset)
for (i in 2: length(file_list)){
		  file=file_list[i]
  # if the merged dataset doesn't exist, create it
  
    
    temp_dataset<- read.table(file, header=FALSE, sep=",")
	    temp_dataset[,"year"]=(i+1878)
	    dataset<-rbind(dataset,temp_dataset)
		    
		    
}
colnames(dataset) <- c("name", "sex", "count", "year")
dataset<-dataset[-1,]
print(head(dataset))
       

