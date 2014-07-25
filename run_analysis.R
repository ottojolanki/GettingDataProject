##first we read in the datasets and the features, and assign the
##approppriate colnames to the dataset

x_test<-read.table("./test/X_test.txt")
features<-read.table("features.txt")
feat<-as.character(features$V2)
colnames(x_test)<-feat

##read in the subject IDs, and activity labels and attach them to the
##dataset. we make the activity_id into a factor and label
##it approppriately. we make the leftmost column the subject ID
##and the second column the activity id by cbinding them into 
##the actual data in correct order

activity_id<-read.table("./test//y_test.txt")
activity_id$V1<-factor(activity_id$V1,labels=c("WALKING","WALKING_UPSTAIRS",
                  "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
colnames(activity_id)<-c("activity_id")
subject_id_test<-read.table("./test/subject_test.txt")
colnames(subject_id_test)<-c("subject_id")
x_test<-cbind(activity_id,x_test)
x_test<-cbind(subject_id_test,x_test)

