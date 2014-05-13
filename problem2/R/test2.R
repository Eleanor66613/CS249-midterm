precentage_for_this_name<-c(0)
current_name='a'
total_count=0
current_sex=''
for (i in 1:nrow(bnames)){
	if(current_name!=bnames[i,]$name | current_sex!=bnames[i,]$sex){
		current_name<-bnames[i,]$name
		current_sex<-bnames[i,]$sex
		total_count<-subset(baby_name_totalCount, baby_name_totalCount$name==current_name & baby_name_totalCount$sex==current_sex)$totalCount
	}
	current_precentage=dataset[i,]$count/total_count
	precentage_for_this_name<-append(precentage_for_this_name, c(current_precentage))
}

print(dim(precentage_for_this_name))

print(head(precentage_for_this_name))

baby_name_precentage<-cbind(dataset,t(precentage_for_this_name))
