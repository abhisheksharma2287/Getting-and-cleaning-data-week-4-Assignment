#load dplyr package
library(dplyr)
# read test data 
x_test<-read.table("d:/r/week4/dataset/UCI HAR dataset/test/X_test.txt")
y_test<-read.table("d:/r/week4/dataset/UCI HAR dataset/test/y_test.txt")
subject_test<-read.table("d:/r/week4/dataset/UCI HAR dataset/test/subject_test.txt")
# read train data 
x_train<-read.table("d:/r/week4/dataset/UCI HAR dataset/train/X_train.txt")
y_train<-read.table("d:/r/week4/dataset/UCI HAR dataset/train/y_train.txt")
subject_train<-read.table("d:/r/week4/dataset/UCI HAR dataset/train/subject_train.txt")
#Merging train and test data
x_final<-rbind(x_train,x_test)
y_final<-rbind(y_train,y_test)
sub_final<-rbind(subject_train,subject_test)
#read features
var_names<-read.table("d:/r/week4/dataset/UCI HAR dataset/features.txt")
#read activities
activity_labels<-read.table("d:/r/week4/dataset/UCI HAR dataset/activity_labels.txt")
# keeping only measurements for mean and standard deviation
variables_wanted<-var_names[grep("mean|std",var_names[,2]),]
x_final<-x_final[,variables_wanted[,1]]
#giving column names to each dataset
colnames(y_final) <- "activity"
colnames(x_final) <- variables_wanted[,2]
colnames(sub_final)<- "subject"
#converting to factor variables
y_final$activitylabel<-factor(y_final$activity, labels = as.character(activity_labels[,2]))
activity_label<-y_final[,-1]
#merging final dataset
final_data<-cbind(x_final,activity_label,sub_final)
#getting independent tidy data set with the average of each variable for each activity and each subject.
temp<- group_by(final_data,activity_label,subject)
final<-summarise_all(temp,funs(mean))
#Extracting the data 
write.table(final, file = "d:/r/week4/final.txt", row.names = FALSE, col.names = TRUE)
