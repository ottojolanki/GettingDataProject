##first we read in the datasets and the features, and assign the
##approppriate colnames to the dataset

x_test<-read.table("./test/X_test.txt")
features<-read.table("features.txt")
feat<-as.character(features$V2)
colnames(x_test)<-feat
x_train<-read.table("./train//X_train.txt")
colnames(x_train)<-feat
##read in the subject IDs, and activity labels and attach them to the
##dataset. we make the activity_id into a factor and label
##it approppriately. we make the leftmost column the subject ID
##and the second column the activity id by cbinding them into 
##the actual data in correct order

activity_id_test<-read.table("./test//y_test.txt")
activity_id_test$V1<-factor(activity_id_test$V1,labels=c("WALKING","WALKING_UPSTAIRS",
                  "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
colnames(activity_id_test)<-c("activity_id")
subject_id_test<-read.table("./test/subject_test.txt")
colnames(subject_id_test)<-c("subject_id")
x_test<-cbind(activity_id_test,x_test)
x_test<-cbind(subject_id_test,x_test)

activity_id_train<-read.table("./train//y_train.txt")
activity_id_train$V1<-factor(activity_id_train$V1,labels=c("WALKING","WALKING_UPSTAIRS",
                  "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
colnames(activity_id_train)<-c("activity_id")
subject_id_train<-read.table("./train//subject_train.txt")
colnames(subject_id_train)<-c("subject_id")
x_train<-cbind(activity_id_train,x_train)
x_train<-cbind(subject_id_train,x_train)

##merge datasets, put test on top

x_complete<-rbind(x_test,x_train)

##extract the features that contain "mean" or "std"
##and subset the data accordingly
##first make the colnames all lowercase to simplify the extraction

colnames(x_complete)<-tolower(colnames(x_complete))
indices<-c(1,2,grep("std",colnames(x_complete)),grep("mean",colnames(x_complete)))
x_complete<-x_complete[,indices]
x_complete$subject_id<-factor(x_complete$subject_id)

##now the only thing left is to calculate the means of columns in x_complete
##grouped by activity_id and subject_id and name the columns of the
##resulting dataframe accordingly

tidyset<-aggregate(x_complete[,3:ncol(x_complete)],
                   list(x_complete$activity_id,x_complete$subject_id),mean)
meannames<-paste("MEAN OF",names(tidyset),sep=":")
meannames[1]<-"activity"
meannames[2]<-"indvidual"
colnames(tidyset)<-meannames

